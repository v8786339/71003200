onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib IBERT_SATA_10G_opt

do {wave.do}

view wave
view structure
view signals

do {IBERT_SATA_10G.udo}

run -all

quit -force
