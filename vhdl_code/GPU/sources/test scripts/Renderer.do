restart -f
force clk 0 0 ns, 1 5 ns -r 10 ns
force SOAMData 2#000001000_001000000_00000_00000000
force SpriteRomDatout 16#FE
force bufferFull 0
force bufferClear 0

run 5200 ns


force SOAMData 2#001000000_000000010_00000_00000000

run 2400 ns

force bufferFull 1

run 100 ns

force bufferFull 0

run 2600 ns

force SOAMData 2#000001000_001000000_00000_00000000

run 5200 ns