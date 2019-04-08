onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib RAMTHING_opt

do {wave.do}

view wave
view structure
view signals

do {RAMTHING.udo}

run -all

quit -force
