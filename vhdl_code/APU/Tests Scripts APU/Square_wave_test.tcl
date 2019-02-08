restart
add_force clk 0 0 1 5 -repeat_every 10

add_force enable 0
add_force frequency 000000000000

run 10000000

add_force enable 1

run 100000000

add_force frequency 11111111110

run 100000000

