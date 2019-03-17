-- (c) Copyright 1995-2019 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:module_ref:COMMAND_PROCESSOR:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY BOARD_DESIGN_COMMAND_PROCESSOR_0_1 IS
  PORT (
    clk : IN STD_LOGIC;
    mc_data : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    mc_clk : IN STD_LOGIC;
    mc_register_select : IN STD_LOGIC;
    x_loc_sprite : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
    y_loc_sprite : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
    sprite_memory_loc : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    sprite_attribute : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    sprite_register_loc : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
    OAMEnable : OUT STD_LOGIC;
    start_music : OUT STD_LOGIC;
    reset_APU : OUT STD_LOGIC;
    start_addres_APU : OUT STD_LOGIC_VECTOR(10 DOWNTO 0)
  );
END BOARD_DESIGN_COMMAND_PROCESSOR_0_1;

ARCHITECTURE BOARD_DESIGN_COMMAND_PROCESSOR_0_1_arch OF BOARD_DESIGN_COMMAND_PROCESSOR_0_1 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF BOARD_DESIGN_COMMAND_PROCESSOR_0_1_arch: ARCHITECTURE IS "yes";
  COMPONENT COMMAND_PROCESSOR IS
    PORT (
      clk : IN STD_LOGIC;
      mc_data : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      mc_clk : IN STD_LOGIC;
      mc_register_select : IN STD_LOGIC;
      x_loc_sprite : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
      y_loc_sprite : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
      sprite_memory_loc : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      sprite_attribute : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      sprite_register_loc : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
      OAMEnable : OUT STD_LOGIC;
      start_music : OUT STD_LOGIC;
      reset_APU : OUT STD_LOGIC;
      start_addres_APU : OUT STD_LOGIC_VECTOR(10 DOWNTO 0)
    );
  END COMPONENT COMMAND_PROCESSOR;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF reset_APU: SIGNAL IS "XIL_INTERFACENAME reset_APU, POLARITY ACTIVE_LOW";
  ATTRIBUTE X_INTERFACE_INFO OF reset_APU: SIGNAL IS "xilinx.com:signal:reset:1.0 reset_APU RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF mc_clk: SIGNAL IS "XIL_INTERFACENAME mc_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN BOARD_DESIGN_mc_clk";
  ATTRIBUTE X_INTERFACE_INFO OF mc_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 mc_clk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN BOARD_DESIGN_clk";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
BEGIN
  U0 : COMMAND_PROCESSOR
    PORT MAP (
      clk => clk,
      mc_data => mc_data,
      mc_clk => mc_clk,
      mc_register_select => mc_register_select,
      x_loc_sprite => x_loc_sprite,
      y_loc_sprite => y_loc_sprite,
      sprite_memory_loc => sprite_memory_loc,
      sprite_attribute => sprite_attribute,
      sprite_register_loc => sprite_register_loc,
      OAMEnable => OAMEnable,
      start_music => start_music,
      reset_APU => reset_APU,
      start_addres_APU => start_addres_APU
    );
END BOARD_DESIGN_COMMAND_PROCESSOR_0_1_arch;
