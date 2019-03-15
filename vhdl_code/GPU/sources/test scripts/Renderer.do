restart -f
force clk 0 0 ns, 1 5 ns -r 10 ns
force SOAMData 2#0000010000010000000000000000000
force SpriteRomDatout 16#FE
force bufferFull 0
force bufferClear 0

run 5200 ns


force SOAMData 2#0010000000000000100000000000000

run 2400 ns

force bufferFull 1

run 100 ns

force bufferFull 0

run 2600 ns

force SOAMData 2#0000010000010000000000000000000

run 5200 ns