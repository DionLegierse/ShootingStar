restart

add_force clk 0 0ns 1 5ns -repeat_every 10ns
add_force isEndLine 0
add_force SOAMData 11010010110100101101001011010010

run 405ns

add_force isEndLine 1
add_force SOAMData 11011101110111011101110111011101
run 10ns
add_force isEndline 0
run 360ns
