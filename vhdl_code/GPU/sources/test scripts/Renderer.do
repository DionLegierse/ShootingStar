restart -f
force clk 0 0 ns, 1 5 ns -r 10 ns
force SOAMData 16#DADDADFA
force SpriteRomDatout 16#FE
force bufferFull 0
force bufferClear 0

run 5200 ns