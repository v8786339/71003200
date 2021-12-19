onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib ps_subsys_opt

do {wave.do}

view wave
view structure
view signals

do {ps_subsys.udo}

run -all

quit -force
