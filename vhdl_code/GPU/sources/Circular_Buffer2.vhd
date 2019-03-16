library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
------------------------------------------------------

----------------------------------------------------------------------------
entity circular_buffer2 is
	Generic(
			ADDR_W	: integer	:= 4;				-- address width in bits 2log(depth)
			DATA_W 	: integer	:= 24; 				-- data width in bits
			BUFF_L	: integer 	:=16;				-- buffer length must be less than address space as in  BUFF_L <or= 2^(ADDR_W)-1
			ALMST_F	: integer 	:= 3;				-- buffer almost full treshold
			ALMST_E	: integer	:= 3				-- buffer aloms empty treshold
			);
	Port (
			clk 					: in std_logic;			-- Dude
			n_reset 				: in std_logic;			-- reset
			rd_en 					: in std_logic; 		-- read enable
			wr_en					: in std_logic; 		-- write enable
			data_in 				: in std_logic_vector(DATA_W- 1 downto 0); 	--data input
			data_out				: out std_logic_vector(DATA_W- 1 downto 0); --data output
			data_count				: out std_logic_vector(ADDR_W downto 0);
			empty 					: out std_logic;		--is empty
			full					: out std_logic;		--is full
			almst_empty 			: out std_logic;		--reched almost treshold
			almst_full 				: out std_logic;		--reched almost treshold
			err						: out std_logic			--invalid state
);
end circular_buffer2;
----------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------------------------
architecture Behavioral of circular_buffer2 is

	type buffer_type is array (0 to ((2**ADDR_W) - 1)) of std_logic_vector(DATA_W - 1 downto 0);

	-----memory, pointers, and flip flops-------
	signal mem_array					: buffer_type ;
	signal rptr, wptr 				: std_logic_vector(ADDR_W-1 downto 0); 	-- current pointers
	signal rptr_nxt					: std_logic_vector(ADDR_W-1 downto 0); 	-- next pointer
	signal wptr_nxt 					: std_logic_vector(ADDR_W-1 downto 0); 	-- next pointer
	signal full_ff, empty_ff			: std_logic;							-- full and empty flag flip flops
	signal full_ff_nxt 					: std_logic;							-- full and empty flag flip flops for next state
	signal empty_ff_nxt 				: std_logic;
	signal almst_f_ff					: std_logic;							-- watermark flip flops for almost full/empty flags
	signal almst_e_ff					: std_logic;
	signal almst_f_ff_nxt				: std_logic;							-- watermark flip flops for almost full/empty flags for next state
	signal almst_e_ff_nxt				: std_logic;
	signal q_reg, q_next				: std_logic_vector(ADDR_W downto 0);	-- data counter
	signal q_add, q_sub					: std_logic;

	---------------------------------------------------

begin

	---------- Process to update read, write, full, and empty on clock edges
	reg_update :
	process(clk)
	begin
		if rising_edge(clk) then
			if (n_reset = '0')  then
				rptr <= (others => '0');
				wptr <= (others => '0');
				full_ff <= '0';
				empty_ff <= '1';
				almst_f_ff <= '0';
				almst_e_ff <= '1';
				q_reg <= (others => '0');
			else
				rptr <=	rptr_nxt;
				wptr <= wptr_nxt;
				full_ff <= full_ff_nxt;
				empty_ff <= empty_ff_nxt;
				almst_f_ff <= almst_f_ff_nxt;
				almst_e_ff <= almst_e_ff_nxt;
				q_reg <= q_next;
			end if;	-- end of n_reset if
		end if;	-- end of rising_edge(clk) if
	end process;

	  -- --------------Process to control almost full and almost emptly flags
	Wtr_Mrk_Cont:
	process(q_reg, almst_e_ff, almst_f_ff)
	begin
		almst_e_ff_nxt <= almst_e_ff;
		almst_f_ff_nxt <= almst_f_ff;
		   --check to see if wptr is ALMST_E away from rptr (aka almost empty)
		if(conv_integer(q_reg) < (ALMST_E  )) then
			almst_e_ff_nxt <= '1';
		else
			almst_e_ff_nxt<= '0';
		end if;
		if(conv_integer(q_reg) > (BUFF_L-1-ALMST_F ))  then
			almst_f_ff_nxt<= '1';
		else
			almst_f_ff_nxt <= '0';
		end if;
	end process;


	----------- Process to control read and write pointers and empty/full flip flops
	Ptr_Cont :
	process(wr_en, rd_en, wptr, rptr, empty_ff, full_ff, q_reg)

	begin
		wptr_nxt <= wptr;											-- no change to pointers
		rptr_nxt <= rptr;
		full_ff_nxt <= full_ff;
		empty_ff_nxt <= empty_ff;
		q_add <= '0';
		q_sub <= '0';

		---------- check if fifo is full during a write attempt, after a write increment counter
		----------------------------------------------------
		if(wr_en = '1' and rd_en = '0') then
			if(full_ff = '0') then
				if(conv_integer(wptr) < BUFF_L-1 ) then
					q_add <= '1';
					wptr_nxt <= wptr  + '1';
					empty_ff_nxt <= '0';
				else
					wptr_nxt <= (others => '0');
					empty_ff_nxt <= '0';
				end if;
				-- check if fifo is full
				if (conv_integer(wptr + '1') = conv_integer(rptr) or (conv_integer(wptr) = (BUFF_L-1) and conv_integer(rptr) = 0)) then
					full_ff_nxt <= '1';
				end if ;
			end if;
		end if;
		---------- check to see if fifo is empty during a read attempt, after a read decrement counter
		---------------------------------------------------------------
		if(wr_en = '0' and rd_en = '1') then
			if(empty_ff = '0') then
				if(conv_integer(rptr) < BUFF_L-1 ) then
					if(conv_integer(q_reg) > 0) then
						q_sub <= '1';
					else
						q_sub <= '0';
					end if;
					rptr_nxt <= rptr + '1';
					full_ff_nxt <= '0';
				else
					rptr_nxt <= (others => '0');
					full_ff_nxt <= '0';
				end if;
				-- check if fifo is empty
				if (conv_integer(rptr  + '1') = conv_integer(wptr) or (conv_integer(rptr) = (BUFF_L-1) and conv_integer(wptr) = 0 )) then
					empty_ff_nxt <= '1';
				end if ;
			end if;
		end if;
		-----------------------------------------------------------------
		if(wr_en = '1' and rd_en = '1') then
			if(conv_integer(wptr) < BUFF_L-1 ) then
				wptr_nxt <= wptr  + '1';
			else
				wptr_nxt <=  (others => '0');
			end if;
			if(conv_integer(rptr) < BUFF_L-1 ) then
				rptr_nxt <= rptr + '1';
			else
				rptr_nxt <= (others => '0');
			end if;
		end if;
	end process;


	-------- Process to control memory array writing and reading
	mem_cont :
	process(clk)
	begin
		if rising_edge(clk) then
			if( n_reset = '0') then
				mem_array <= (others => (others => '0'));  			-- reset memory array
				err <= '0';
			else
				-- if write enable and not full then latch in data and increment wright pointer
				if( wr_en = '1') and (full_ff = '0') then
					mem_array (conv_integer(wptr)) <=  data_in ;
					err <= '0';
				elsif(wr_en = '1') and (full_ff = '1') then					-- check if full and trying to write
					err <= '1';
				end if ;
				-- if read enable and fifo not empty then latch data out and increment read pointer
				if( rd_en = '1') and (empty_ff = '0') then
					data_out <= mem_array (conv_integer(rptr));
					err <= '0';
				elsif(rd_en = '1') and (empty_ff = '1') then			-- check if empty and trying to read
					err <= '1';
				end if ;
			end if;	-- end of n_reset if
		end if;	-- end of rising_edge(clk) if
	end process;

	-------- counter to keep track of almost full and almost empty
	q_next <= q_reg + 1 when q_add = '1' else
						q_reg - 1 when q_sub = '1' else
						q_reg;

	-------- connect ff to output ports
	full <= full_ff;
	empty <= empty_ff;
	almst_empty <= almst_e_ff;
	almst_full <= almst_f_ff;
	data_count <= q_reg;

end arch;
---------------------------------------------------------------------------------------
