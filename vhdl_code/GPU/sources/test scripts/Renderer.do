restart -f
force clk 0 0 ns, 1 5 ns -r 10 ns
force SOAMData 2#0000010000010000000000000000001
force SpriteRomDatout(0) 0 0 ns, 1 5 ns -r 10 ns
force SpriteRomDatout(1) 0 0 ns, 1 10 ns -r 20 ns
force SpriteRomDatout(2) 0 0 ns, 1 20 ns -r 40 ns
force SpriteRomDatout(3) 0 0 ns, 1 40 ns -r 80 ns
force SpriteRomDatout(4) 0 0 ns, 1 80 ns -r 160 ns
force SpriteRomDatout(5) 0 0 ns, 1 160 ns -r 320 ns
force SpriteRomDatout(6) 0 0 ns, 1 320 ns -r 640 ns
force SpriteRomDatout(7) 0 0 ns, 1 640 ns -r 1280 ns
force bufferFull 0
force bufferClear 0

run 5200 ns

force SOAMData 2#0010000000000000100000000000000

run 300 ns

force bufferFull 1

run 100 ns

force bufferFull 0

run 4700 ns

force SOAMData 2#0000010000010000000000000000001

run 5200 ns