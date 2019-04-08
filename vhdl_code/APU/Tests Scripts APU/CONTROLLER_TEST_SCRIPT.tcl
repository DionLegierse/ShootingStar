restart
add_force clk 0 0 1 5 -repeat_every 10
add_force start_music 0
add_force startAddress 000000000

run 2

add_force start_music 1

run 10

add_force start_music 0
