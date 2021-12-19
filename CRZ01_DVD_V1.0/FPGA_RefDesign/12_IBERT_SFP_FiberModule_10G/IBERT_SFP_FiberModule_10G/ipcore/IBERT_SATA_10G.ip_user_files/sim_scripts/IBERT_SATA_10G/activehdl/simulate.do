onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+IBERT_SATA_10G -L xil_defaultlib -L xpm -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.IBERT_SATA_10G xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {IBERT_SATA_10G.udo}

run -all

endsim

quit -force
