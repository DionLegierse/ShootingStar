restart

add_force {/FPGA_TOP/clk} -radix hex {0 0ns} {1 5000ps} -repeat_every 10000ps
add_force {/FPGA_TOP/GPU_1/SPRITE_BANK_1/sprites_array[0].x} -radix bin {000000001 0ns}
add_force {/FPGA_TOP/GPU_1/SPRITE_BANK_1/sprites_array[0].y} -radix bin {000000001 0ns}
add_force {/FPGA_TOP/GPU_1/SPRITE_BANK_1/sprites_array[0].attrib} -radix bin {000000 0ns}
add_force {/FPGA_TOP/GPU_1/SPRITE_BANK_1/sprites_array[0].number} -radix hex {00000000 0ns}

run 2ms
