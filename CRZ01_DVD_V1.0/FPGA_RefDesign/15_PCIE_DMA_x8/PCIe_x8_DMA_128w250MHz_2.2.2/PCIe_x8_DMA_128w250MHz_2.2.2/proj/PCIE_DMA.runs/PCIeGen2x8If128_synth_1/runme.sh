#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
# 

echo "This script was generated under a different operating system."
echo "Please update the PATH and LD_LIBRARY_PATH variables below, before executing this script"
exit

if [ -z "$PATH" ]; then
  PATH=D:/Xilinx/SDK/2017.4/bin;D:/Xilinx/Vivado/2017.4/ids_lite/ISE/bin/nt64;D:/Xilinx/Vivado/2017.4/ids_lite/ISE/lib/nt64:D:/Xilinx/Vivado/2017.4/bin
else
  PATH=D:/Xilinx/SDK/2017.4/bin;D:/Xilinx/Vivado/2017.4/ids_lite/ISE/bin/nt64;D:/Xilinx/Vivado/2017.4/ids_lite/ISE/lib/nt64:D:/Xilinx/Vivado/2017.4/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='D:/BaiduNetdiskDownload/crz01/CRZ01_DVD_V1.0/CRZ01_DVD_V1.0/CRZ01_DVD_V1.0/FPGA_RefDesign/15_PCIE_DMA_x8/PCIe_x8_DMA_128w250MHz_2.2.2/PCIe_x8_DMA_128w250MHz_2.2.2/proj/PCIE_DMA.runs/PCIeGen2x8If128_synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log PCIeGen2x8If128.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source PCIeGen2x8If128.tcl
