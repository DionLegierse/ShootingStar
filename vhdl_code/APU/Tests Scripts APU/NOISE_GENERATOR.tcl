restart
add_force clk 0 0 1 5 -repeat_every 10

add_force frequency 11000011111
add_force setSample 0001
add_force enable 0

run 102

add_force enable 1
run 10000000

add_force setSample 0010
run 10000000

add_force setSample 0011
run 10000000

add_force setSample 0100
run 10000000

add_force setSample 0101
run 10000000

add_force setSample 0110
run 10000000

add_force setSample 0111
run 10000000

add_force setSample 0000
run 10000000

add_force setSample 1001
run 10000000

add_force setSample 1010
run 10000000

add_force setSample 1011
run 10000000

add_force setSample 1100
run 10000000

add_force setSample 1101
run 10000000

add_force setSample 1110
run 10000000

add_force setSample 1111
run 10000000

add_force setSample 1000
run 10000000
