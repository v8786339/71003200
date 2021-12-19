############################################################################
##
##  Xilinx, Inc. 2006            www.xilinx.com
############################################################################
##  File name :       ps7_constraints.xdc
##
##  Details :     Constraints file
##                    FPGA family:       zynq
##                    FPGA:              xc7z100ffg900-2
##                    Device Size:        xc7z100
##                    Package:            ffg900
##                    Speedgrade:         -2
##
##
############################################################################
############################################################################
############################################################################
# Clock constraints                                                        #
############################################################################
create_clock -name clk_fpga_1 -period "5" [get_pins "PS7_i/FCLKCLK[1]"]
set_input_jitter clk_fpga_1 0.15
#The clocks are asynchronous, user should constrain them appropriately.#
create_clock -name clk_fpga_0 -period "10" [get_pins "PS7_i/FCLKCLK[0]"]
set_input_jitter clk_fpga_0 0.3
#The clocks are asynchronous, user should constrain them appropriately.#


############################################################################
# I/O STANDARDS and Location Constraints                                   #
############################################################################

#  Enet 0 / mdio / MIO[53]
set_property iostandard "LVCMOS18" [get_ports "MIO[53]"]
set_property PACKAGE_PIN "C18" [get_ports "MIO[53]"]
set_property slew "slow" [get_ports "MIO[53]"]
set_property drive "8" [get_ports "MIO[53]"]
set_property pullup "TRUE" [get_ports "MIO[53]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[53]"]
#  Enet 0 / mdc / MIO[52]
set_property iostandard "LVCMOS18" [get_ports "MIO[52]"]
set_property PACKAGE_PIN "D19" [get_ports "MIO[52]"]
set_property slew "slow" [get_ports "MIO[52]"]
set_property drive "8" [get_ports "MIO[52]"]
set_property pullup "TRUE" [get_ports "MIO[52]"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "MIO[52]"]
#  I2C 0 / sda / MIO[51]
set_property iostandard "LVCMOS18" [get_ports "MIO[51]"]
set_property PACKAGE_PIN "F19" [get_ports "MIO[51]"]
set_property slew "slow" [get_ports "MIO[51]"]
set_property drive "8" [get_ports "MIO[51]"]
set_property pullup "TRUE" [get_ports "MIO[51]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[51]"]
#  I2C 0 / scl / MIO[50]
set_property iostandard "LVCMOS18" [get_ports "MIO[50]"]
set_property PACKAGE_PIN "A19" [get_ports "MIO[50]"]
set_property slew "slow" [get_ports "MIO[50]"]
set_property drive "8" [get_ports "MIO[50]"]
set_property pullup "TRUE" [get_ports "MIO[50]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[50]"]
#  UART 1 / rx / MIO[49]
set_property iostandard "LVCMOS18" [get_ports "MIO[49]"]
set_property PACKAGE_PIN "D18" [get_ports "MIO[49]"]
set_property slew "slow" [get_ports "MIO[49]"]
set_property drive "8" [get_ports "MIO[49]"]
set_property pullup "TRUE" [get_ports "MIO[49]"]
set_property PIO_DIRECTION "INPUT" [get_ports "MIO[49]"]
#  UART 1 / tx / MIO[48]
set_property iostandard "LVCMOS18" [get_ports "MIO[48]"]
set_property PACKAGE_PIN "C19" [get_ports "MIO[48]"]
set_property slew "slow" [get_ports "MIO[48]"]
set_property drive "8" [get_ports "MIO[48]"]
set_property pullup "TRUE" [get_ports "MIO[48]"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "MIO[48]"]
#  ENET Reset / reset / MIO[47]
set_property iostandard "LVCMOS18" [get_ports "MIO[47]"]
set_property PACKAGE_PIN "A18" [get_ports "MIO[47]"]
set_property slew "slow" [get_ports "MIO[47]"]
set_property drive "8" [get_ports "MIO[47]"]
set_property pullup "TRUE" [get_ports "MIO[47]"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "MIO[47]"]
#  I2C Reset / reset / MIO[46]
set_property iostandard "LVCMOS18" [get_ports "MIO[46]"]
set_property PACKAGE_PIN "F20" [get_ports "MIO[46]"]
set_property slew "slow" [get_ports "MIO[46]"]
set_property drive "8" [get_ports "MIO[46]"]
set_property pullup "TRUE" [get_ports "MIO[46]"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "MIO[46]"]
#  SD 0 / data[3] / MIO[45]
set_property iostandard "LVCMOS18" [get_ports "MIO[45]"]
set_property PACKAGE_PIN "H18" [get_ports "MIO[45]"]
set_property slew "slow" [get_ports "MIO[45]"]
set_property drive "8" [get_ports "MIO[45]"]
set_property pullup "TRUE" [get_ports "MIO[45]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[45]"]
#  SD 0 / data[2] / MIO[44]
set_property iostandard "LVCMOS18" [get_ports "MIO[44]"]
set_property PACKAGE_PIN "E20" [get_ports "MIO[44]"]
set_property slew "slow" [get_ports "MIO[44]"]
set_property drive "8" [get_ports "MIO[44]"]
set_property pullup "TRUE" [get_ports "MIO[44]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[44]"]
#  SD 0 / data[1] / MIO[43]
set_property iostandard "LVCMOS18" [get_ports "MIO[43]"]
set_property PACKAGE_PIN "E18" [get_ports "MIO[43]"]
set_property slew "slow" [get_ports "MIO[43]"]
set_property drive "8" [get_ports "MIO[43]"]
set_property pullup "TRUE" [get_ports "MIO[43]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[43]"]
#  SD 0 / data[0] / MIO[42]
set_property iostandard "LVCMOS18" [get_ports "MIO[42]"]
set_property PACKAGE_PIN "D20" [get_ports "MIO[42]"]
set_property slew "slow" [get_ports "MIO[42]"]
set_property drive "8" [get_ports "MIO[42]"]
set_property pullup "TRUE" [get_ports "MIO[42]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[42]"]
#  SD 0 / cmd / MIO[41]
set_property iostandard "LVCMOS18" [get_ports "MIO[41]"]
set_property PACKAGE_PIN "J18" [get_ports "MIO[41]"]
set_property slew "slow" [get_ports "MIO[41]"]
set_property drive "8" [get_ports "MIO[41]"]
set_property pullup "TRUE" [get_ports "MIO[41]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[41]"]
#  SD 0 / clk / MIO[40]
set_property iostandard "LVCMOS18" [get_ports "MIO[40]"]
set_property PACKAGE_PIN "B20" [get_ports "MIO[40]"]
set_property slew "slow" [get_ports "MIO[40]"]
set_property drive "8" [get_ports "MIO[40]"]
set_property pullup "TRUE" [get_ports "MIO[40]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[40]"]
#  USB 0 / data[7] / MIO[39]
set_property iostandard "LVCMOS18" [get_ports "MIO[39]"]
set_property PACKAGE_PIN "F18" [get_ports "MIO[39]"]
set_property slew "slow" [get_ports "MIO[39]"]
set_property drive "8" [get_ports "MIO[39]"]
set_property pullup "TRUE" [get_ports "MIO[39]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[39]"]
#  USB 0 / data[6] / MIO[38]
set_property iostandard "LVCMOS18" [get_ports "MIO[38]"]
set_property PACKAGE_PIN "A20" [get_ports "MIO[38]"]
set_property slew "slow" [get_ports "MIO[38]"]
set_property drive "8" [get_ports "MIO[38]"]
set_property pullup "TRUE" [get_ports "MIO[38]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[38]"]
#  USB 0 / data[5] / MIO[37]
set_property iostandard "LVCMOS18" [get_ports "MIO[37]"]
set_property PACKAGE_PIN "B21" [get_ports "MIO[37]"]
set_property slew "slow" [get_ports "MIO[37]"]
set_property drive "8" [get_ports "MIO[37]"]
set_property pullup "TRUE" [get_ports "MIO[37]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[37]"]
#  USB 0 / clk / MIO[36]
set_property iostandard "LVCMOS18" [get_ports "MIO[36]"]
set_property PACKAGE_PIN "H17" [get_ports "MIO[36]"]
set_property slew "slow" [get_ports "MIO[36]"]
set_property drive "8" [get_ports "MIO[36]"]
set_property pullup "TRUE" [get_ports "MIO[36]"]
set_property PIO_DIRECTION "INPUT" [get_ports "MIO[36]"]
#  USB 0 / data[3] / MIO[35]
set_property iostandard "LVCMOS18" [get_ports "MIO[35]"]
set_property PACKAGE_PIN "G21" [get_ports "MIO[35]"]
set_property slew "slow" [get_ports "MIO[35]"]
set_property drive "8" [get_ports "MIO[35]"]
set_property pullup "TRUE" [get_ports "MIO[35]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[35]"]
#  USB 0 / data[2] / MIO[34]
set_property iostandard "LVCMOS18" [get_ports "MIO[34]"]
set_property PACKAGE_PIN "K18" [get_ports "MIO[34]"]
set_property slew "slow" [get_ports "MIO[34]"]
set_property drive "8" [get_ports "MIO[34]"]
set_property pullup "TRUE" [get_ports "MIO[34]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[34]"]
#  USB 0 / data[1] / MIO[33]
set_property iostandard "LVCMOS18" [get_ports "MIO[33]"]
set_property PACKAGE_PIN "G22" [get_ports "MIO[33]"]
set_property slew "slow" [get_ports "MIO[33]"]
set_property drive "8" [get_ports "MIO[33]"]
set_property pullup "TRUE" [get_ports "MIO[33]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[33]"]
#  USB 0 / data[0] / MIO[32]
set_property iostandard "LVCMOS18" [get_ports "MIO[32]"]
set_property PACKAGE_PIN "K17" [get_ports "MIO[32]"]
set_property slew "slow" [get_ports "MIO[32]"]
set_property drive "8" [get_ports "MIO[32]"]
set_property pullup "TRUE" [get_ports "MIO[32]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[32]"]
#  USB 0 / nxt / MIO[31]
set_property iostandard "LVCMOS18" [get_ports "MIO[31]"]
set_property PACKAGE_PIN "H21" [get_ports "MIO[31]"]
set_property slew "slow" [get_ports "MIO[31]"]
set_property drive "8" [get_ports "MIO[31]"]
set_property pullup "TRUE" [get_ports "MIO[31]"]
set_property PIO_DIRECTION "INPUT" [get_ports "MIO[31]"]
#  USB 0 / stp / MIO[30]
set_property iostandard "LVCMOS18" [get_ports "MIO[30]"]
set_property PACKAGE_PIN "L18" [get_ports "MIO[30]"]
set_property slew "slow" [get_ports "MIO[30]"]
set_property drive "8" [get_ports "MIO[30]"]
set_property pullup "TRUE" [get_ports "MIO[30]"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "MIO[30]"]
#  USB 0 / dir / MIO[29]
set_property iostandard "LVCMOS18" [get_ports "MIO[29]"]
set_property PACKAGE_PIN "H22" [get_ports "MIO[29]"]
set_property slew "slow" [get_ports "MIO[29]"]
set_property drive "8" [get_ports "MIO[29]"]
set_property pullup "TRUE" [get_ports "MIO[29]"]
set_property PIO_DIRECTION "INPUT" [get_ports "MIO[29]"]
#  USB 0 / data[4] / MIO[28]
set_property iostandard "LVCMOS18" [get_ports "MIO[28]"]
set_property PACKAGE_PIN "L17" [get_ports "MIO[28]"]
set_property slew "slow" [get_ports "MIO[28]"]
set_property drive "8" [get_ports "MIO[28]"]
set_property pullup "TRUE" [get_ports "MIO[28]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[28]"]
#  Enet 0 / rx_ctl / MIO[27]
set_property iostandard "LVCMOS18" [get_ports "MIO[27]"]
set_property PACKAGE_PIN "G20" [get_ports "MIO[27]"]
set_property slew "slow" [get_ports "MIO[27]"]
set_property drive "8" [get_ports "MIO[27]"]
set_property pullup "TRUE" [get_ports "MIO[27]"]
set_property PIO_DIRECTION "INPUT" [get_ports "MIO[27]"]
#  Enet 0 / rxd[3] / MIO[26]
set_property iostandard "LVCMOS18" [get_ports "MIO[26]"]
set_property PACKAGE_PIN "M17" [get_ports "MIO[26]"]
set_property slew "slow" [get_ports "MIO[26]"]
set_property drive "8" [get_ports "MIO[26]"]
set_property pullup "TRUE" [get_ports "MIO[26]"]
set_property PIO_DIRECTION "INPUT" [get_ports "MIO[26]"]
#  Enet 0 / rxd[2] / MIO[25]
set_property iostandard "LVCMOS18" [get_ports "MIO[25]"]
set_property PACKAGE_PIN "G19" [get_ports "MIO[25]"]
set_property slew "slow" [get_ports "MIO[25]"]
set_property drive "8" [get_ports "MIO[25]"]
set_property pullup "TRUE" [get_ports "MIO[25]"]
set_property PIO_DIRECTION "INPUT" [get_ports "MIO[25]"]
#  Enet 0 / rxd[1] / MIO[24]
set_property iostandard "LVCMOS18" [get_ports "MIO[24]"]
set_property PACKAGE_PIN "M19" [get_ports "MIO[24]"]
set_property slew "slow" [get_ports "MIO[24]"]
set_property drive "8" [get_ports "MIO[24]"]
set_property pullup "TRUE" [get_ports "MIO[24]"]
set_property PIO_DIRECTION "INPUT" [get_ports "MIO[24]"]
#  Enet 0 / rxd[0] / MIO[23]
set_property iostandard "LVCMOS18" [get_ports "MIO[23]"]
set_property PACKAGE_PIN "J21" [get_ports "MIO[23]"]
set_property slew "slow" [get_ports "MIO[23]"]
set_property drive "8" [get_ports "MIO[23]"]
set_property pullup "TRUE" [get_ports "MIO[23]"]
set_property PIO_DIRECTION "INPUT" [get_ports "MIO[23]"]
#  Enet 0 / rx_clk / MIO[22]
set_property iostandard "LVCMOS18" [get_ports "MIO[22]"]
set_property PACKAGE_PIN "L20" [get_ports "MIO[22]"]
set_property slew "slow" [get_ports "MIO[22]"]
set_property drive "8" [get_ports "MIO[22]"]
set_property pullup "TRUE" [get_ports "MIO[22]"]
set_property PIO_DIRECTION "INPUT" [get_ports "MIO[22]"]
#  Enet 0 / tx_ctl / MIO[21]
set_property iostandard "LVCMOS18" [get_ports "MIO[21]"]
set_property PACKAGE_PIN "J19" [get_ports "MIO[21]"]
set_property slew "slow" [get_ports "MIO[21]"]
set_property drive "8" [get_ports "MIO[21]"]
set_property pullup "TRUE" [get_ports "MIO[21]"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "MIO[21]"]
#  Enet 0 / txd[3] / MIO[20]
set_property iostandard "LVCMOS18" [get_ports "MIO[20]"]
set_property PACKAGE_PIN "M20" [get_ports "MIO[20]"]
set_property slew "slow" [get_ports "MIO[20]"]
set_property drive "8" [get_ports "MIO[20]"]
set_property pullup "TRUE" [get_ports "MIO[20]"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "MIO[20]"]
#  Enet 0 / txd[2] / MIO[19]
set_property iostandard "LVCMOS18" [get_ports "MIO[19]"]
set_property PACKAGE_PIN "J20" [get_ports "MIO[19]"]
set_property slew "slow" [get_ports "MIO[19]"]
set_property drive "8" [get_ports "MIO[19]"]
set_property pullup "TRUE" [get_ports "MIO[19]"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "MIO[19]"]
#  Enet 0 / txd[1] / MIO[18]
set_property iostandard "LVCMOS18" [get_ports "MIO[18]"]
set_property PACKAGE_PIN "K20" [get_ports "MIO[18]"]
set_property slew "slow" [get_ports "MIO[18]"]
set_property drive "8" [get_ports "MIO[18]"]
set_property pullup "TRUE" [get_ports "MIO[18]"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "MIO[18]"]
#  Enet 0 / txd[0] / MIO[17]
set_property iostandard "LVCMOS18" [get_ports "MIO[17]"]
set_property PACKAGE_PIN "K21" [get_ports "MIO[17]"]
set_property slew "slow" [get_ports "MIO[17]"]
set_property drive "8" [get_ports "MIO[17]"]
set_property pullup "TRUE" [get_ports "MIO[17]"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "MIO[17]"]
#  Enet 0 / tx_clk / MIO[16]
set_property iostandard "LVCMOS18" [get_ports "MIO[16]"]
set_property PACKAGE_PIN "L19" [get_ports "MIO[16]"]
set_property slew "slow" [get_ports "MIO[16]"]
set_property drive "8" [get_ports "MIO[16]"]
set_property pullup "TRUE" [get_ports "MIO[16]"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "MIO[16]"]
#  GPIO / gpio[15] / MIO[15]
set_property iostandard "LVCMOS18" [get_ports "MIO[15]"]
set_property PACKAGE_PIN "C22" [get_ports "MIO[15]"]
set_property slew "slow" [get_ports "MIO[15]"]
set_property drive "8" [get_ports "MIO[15]"]
set_property pullup "TRUE" [get_ports "MIO[15]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[15]"]
#  SD 0 / cd / MIO[14]
set_property iostandard "LVCMOS18" [get_ports "MIO[14]"]
set_property PACKAGE_PIN "B22" [get_ports "MIO[14]"]
set_property slew "slow" [get_ports "MIO[14]"]
set_property drive "8" [get_ports "MIO[14]"]
set_property pullup "TRUE" [get_ports "MIO[14]"]
set_property PIO_DIRECTION "INPUT" [get_ports "MIO[14]"]
#  Quad SPI Flash / qspi1_io[3] / MIO[13]
set_property iostandard "LVCMOS18" [get_ports "MIO[13]"]
set_property PACKAGE_PIN "F22" [get_ports "MIO[13]"]
set_property slew "slow" [get_ports "MIO[13]"]
set_property drive "8" [get_ports "MIO[13]"]
set_property pullup "TRUE" [get_ports "MIO[13]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[13]"]
#  Quad SPI Flash / qspi1_io[2] / MIO[12]
set_property iostandard "LVCMOS18" [get_ports "MIO[12]"]
set_property PACKAGE_PIN "E21" [get_ports "MIO[12]"]
set_property slew "slow" [get_ports "MIO[12]"]
set_property drive "8" [get_ports "MIO[12]"]
set_property pullup "TRUE" [get_ports "MIO[12]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[12]"]
#  Quad SPI Flash / qspi1_io[1] / MIO[11]
set_property iostandard "LVCMOS18" [get_ports "MIO[11]"]
set_property PACKAGE_PIN "A23" [get_ports "MIO[11]"]
set_property slew "slow" [get_ports "MIO[11]"]
set_property drive "8" [get_ports "MIO[11]"]
set_property pullup "TRUE" [get_ports "MIO[11]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[11]"]
#  Quad SPI Flash / qspi1_io[0] / MIO[10]
set_property iostandard "LVCMOS18" [get_ports "MIO[10]"]
set_property PACKAGE_PIN "E22" [get_ports "MIO[10]"]
set_property slew "slow" [get_ports "MIO[10]"]
set_property drive "8" [get_ports "MIO[10]"]
set_property pullup "TRUE" [get_ports "MIO[10]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[10]"]
#  Quad SPI Flash / qspi1_sclk / MIO[9]
set_property iostandard "LVCMOS18" [get_ports "MIO[9]"]
set_property PACKAGE_PIN "A24" [get_ports "MIO[9]"]
set_property slew "slow" [get_ports "MIO[9]"]
set_property drive "8" [get_ports "MIO[9]"]
set_property pullup "TRUE" [get_ports "MIO[9]"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "MIO[9]"]
#  GPIO / gpio[8] / MIO[8]
set_property iostandard "LVCMOS18" [get_ports "MIO[8]"]
set_property PACKAGE_PIN "C21" [get_ports "MIO[8]"]
set_property slew "slow" [get_ports "MIO[8]"]
set_property drive "8" [get_ports "MIO[8]"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "MIO[8]"]
#  USB Reset / reset / MIO[7]
set_property iostandard "LVCMOS18" [get_ports "MIO[7]"]
set_property PACKAGE_PIN "B24" [get_ports "MIO[7]"]
set_property slew "slow" [get_ports "MIO[7]"]
set_property drive "8" [get_ports "MIO[7]"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "MIO[7]"]
#  Quad SPI Flash / qspi0_sclk / MIO[6]
set_property iostandard "LVCMOS18" [get_ports "MIO[6]"]
set_property PACKAGE_PIN "D24" [get_ports "MIO[6]"]
set_property slew "slow" [get_ports "MIO[6]"]
set_property drive "8" [get_ports "MIO[6]"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "MIO[6]"]
#  Quad SPI Flash / qspi0_io[3]/HOLD_B / MIO[5]
set_property iostandard "LVCMOS18" [get_ports "MIO[5]"]
set_property PACKAGE_PIN "C24" [get_ports "MIO[5]"]
set_property slew "slow" [get_ports "MIO[5]"]
set_property drive "8" [get_ports "MIO[5]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[5]"]
#  Quad SPI Flash / qspi0_io[2] / MIO[4]
set_property iostandard "LVCMOS18" [get_ports "MIO[4]"]
set_property PACKAGE_PIN "E23" [get_ports "MIO[4]"]
set_property slew "slow" [get_ports "MIO[4]"]
set_property drive "8" [get_ports "MIO[4]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[4]"]
#  Quad SPI Flash / qspi0_io[1] / MIO[3]
set_property iostandard "LVCMOS18" [get_ports "MIO[3]"]
set_property PACKAGE_PIN "C23" [get_ports "MIO[3]"]
set_property slew "slow" [get_ports "MIO[3]"]
set_property drive "8" [get_ports "MIO[3]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[3]"]
#  Quad SPI Flash / qspi0_io[0] / MIO[2]
set_property iostandard "LVCMOS18" [get_ports "MIO[2]"]
set_property PACKAGE_PIN "F23" [get_ports "MIO[2]"]
set_property slew "slow" [get_ports "MIO[2]"]
set_property drive "8" [get_ports "MIO[2]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "MIO[2]"]
#  Quad SPI Flash / qspi0_ss_b / MIO[1]
set_property iostandard "LVCMOS18" [get_ports "MIO[1]"]
set_property PACKAGE_PIN "D23" [get_ports "MIO[1]"]
set_property slew "slow" [get_ports "MIO[1]"]
set_property drive "8" [get_ports "MIO[1]"]
set_property pullup "TRUE" [get_ports "MIO[1]"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "MIO[1]"]
#  Quad SPI Flash / qspi1_ss_b / MIO[0]
set_property iostandard "LVCMOS18" [get_ports "MIO[0]"]
set_property PACKAGE_PIN "F24" [get_ports "MIO[0]"]
set_property slew "slow" [get_ports "MIO[0]"]
set_property drive "8" [get_ports "MIO[0]"]
set_property pullup "TRUE" [get_ports "MIO[0]"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "MIO[0]"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_VRP"]
set_property PACKAGE_PIN "M21" [get_ports "DDR_VRP"]
set_property slew "FAST" [get_ports "DDR_VRP"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_VRP"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_VRN"]
set_property PACKAGE_PIN "N21" [get_ports "DDR_VRN"]
set_property slew "FAST" [get_ports "DDR_VRN"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_VRN"]
set_property iostandard "SSTL15" [get_ports "DDR_WEB"]
set_property PACKAGE_PIN "N23" [get_ports "DDR_WEB"]
set_property slew "SLOW" [get_ports "DDR_WEB"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "DDR_WEB"]
set_property iostandard "SSTL15" [get_ports "DDR_RAS_n"]
set_property PACKAGE_PIN "N24" [get_ports "DDR_RAS_n"]
set_property slew "SLOW" [get_ports "DDR_RAS_n"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "DDR_RAS_n"]
set_property iostandard "SSTL15" [get_ports "DDR_ODT"]
set_property PACKAGE_PIN "L23" [get_ports "DDR_ODT"]
set_property slew "SLOW" [get_ports "DDR_ODT"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "DDR_ODT"]
set_property iostandard "SSTL15" [get_ports "DDR_DRSTB"]
set_property PACKAGE_PIN "F25" [get_ports "DDR_DRSTB"]
set_property slew "FAST" [get_ports "DDR_DRSTB"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DRSTB"]
set_property iostandard "DIFF_SSTL15_T_DCI" [get_ports "DDR_DQS[3]"]
set_property PACKAGE_PIN "L28" [get_ports "DDR_DQS[3]"]
set_property slew "FAST" [get_ports "DDR_DQS[3]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQS[3]"]
set_property iostandard "DIFF_SSTL15_T_DCI" [get_ports "DDR_DQS[2]"]
set_property PACKAGE_PIN "G29" [get_ports "DDR_DQS[2]"]
set_property slew "FAST" [get_ports "DDR_DQS[2]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQS[2]"]
set_property iostandard "DIFF_SSTL15_T_DCI" [get_ports "DDR_DQS[1]"]
set_property PACKAGE_PIN "C29" [get_ports "DDR_DQS[1]"]
set_property slew "FAST" [get_ports "DDR_DQS[1]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQS[1]"]
set_property iostandard "DIFF_SSTL15_T_DCI" [get_ports "DDR_DQS[0]"]
set_property PACKAGE_PIN "C26" [get_ports "DDR_DQS[0]"]
set_property slew "FAST" [get_ports "DDR_DQS[0]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQS[0]"]
set_property iostandard "DIFF_SSTL15_T_DCI" [get_ports "DDR_DQS_n[3]"]
set_property PACKAGE_PIN "L29" [get_ports "DDR_DQS_n[3]"]
set_property slew "FAST" [get_ports "DDR_DQS_n[3]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQS_n[3]"]
set_property iostandard "DIFF_SSTL15_T_DCI" [get_ports "DDR_DQS_n[2]"]
set_property PACKAGE_PIN "F29" [get_ports "DDR_DQS_n[2]"]
set_property slew "FAST" [get_ports "DDR_DQS_n[2]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQS_n[2]"]
set_property iostandard "DIFF_SSTL15_T_DCI" [get_ports "DDR_DQS_n[1]"]
set_property PACKAGE_PIN "B29" [get_ports "DDR_DQS_n[1]"]
set_property slew "FAST" [get_ports "DDR_DQS_n[1]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQS_n[1]"]
set_property iostandard "DIFF_SSTL15_T_DCI" [get_ports "DDR_DQS_n[0]"]
set_property PACKAGE_PIN "B26" [get_ports "DDR_DQS_n[0]"]
set_property slew "FAST" [get_ports "DDR_DQS_n[0]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQS_n[0]"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_DQ[9]"]
set_property PACKAGE_PIN "A27" [get_ports "DDR_DQ[9]"]
set_property slew "FAST" [get_ports "DDR_DQ[9]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQ[9]"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_DQ[8]"]
set_property PACKAGE_PIN "A29" [get_ports "DDR_DQ[8]"]
set_property slew "FAST" [get_ports "DDR_DQ[8]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQ[8]"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_DQ[7]"]
set_property PACKAGE_PIN "E27" [get_ports "DDR_DQ[7]"]
set_property slew "FAST" [get_ports "DDR_DQ[7]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQ[7]"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_DQ[6]"]
set_property PACKAGE_PIN "D26" [get_ports "DDR_DQ[6]"]
set_property slew "FAST" [get_ports "DDR_DQ[6]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQ[6]"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_DQ[5]"]
set_property PACKAGE_PIN "E26" [get_ports "DDR_DQ[5]"]
set_property slew "FAST" [get_ports "DDR_DQ[5]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQ[5]"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_DQ[4]"]
set_property PACKAGE_PIN "B25" [get_ports "DDR_DQ[4]"]
set_property slew "FAST" [get_ports "DDR_DQ[4]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQ[4]"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_DQ[3]"]
set_property PACKAGE_PIN "D25" [get_ports "DDR_DQ[3]"]
set_property slew "FAST" [get_ports "DDR_DQ[3]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQ[3]"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_DQ[31]"]
set_property PACKAGE_PIN "M30" [get_ports "DDR_DQ[31]"]
set_property slew "FAST" [get_ports "DDR_DQ[31]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQ[31]"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_DQ[30]"]
set_property PACKAGE_PIN "L30" [get_ports "DDR_DQ[30]"]
set_property slew "FAST" [get_ports "DDR_DQ[30]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQ[30]"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_DQ[2]"]
set_property PACKAGE_PIN "B27" [get_ports "DDR_DQ[2]"]
set_property slew "FAST" [get_ports "DDR_DQ[2]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQ[2]"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_DQ[29]"]
set_property PACKAGE_PIN "M29" [get_ports "DDR_DQ[29]"]
set_property slew "FAST" [get_ports "DDR_DQ[29]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQ[29]"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_DQ[28]"]
set_property PACKAGE_PIN "K30" [get_ports "DDR_DQ[28]"]
set_property slew "FAST" [get_ports "DDR_DQ[28]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQ[28]"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_DQ[27]"]
set_property PACKAGE_PIN "J28" [get_ports "DDR_DQ[27]"]
set_property slew "FAST" [get_ports "DDR_DQ[27]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQ[27]"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_DQ[26]"]
set_property PACKAGE_PIN "J30" [get_ports "DDR_DQ[26]"]
set_property slew "FAST" [get_ports "DDR_DQ[26]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQ[26]"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_DQ[25]"]
set_property PACKAGE_PIN "K27" [get_ports "DDR_DQ[25]"]
set_property slew "FAST" [get_ports "DDR_DQ[25]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQ[25]"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_DQ[24]"]
set_property PACKAGE_PIN "J29" [get_ports "DDR_DQ[24]"]
set_property slew "FAST" [get_ports "DDR_DQ[24]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQ[24]"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_DQ[23]"]
set_property PACKAGE_PIN "F30" [get_ports "DDR_DQ[23]"]
set_property slew "FAST" [get_ports "DDR_DQ[23]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQ[23]"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_DQ[22]"]
set_property PACKAGE_PIN "G30" [get_ports "DDR_DQ[22]"]
set_property slew "FAST" [get_ports "DDR_DQ[22]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQ[22]"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_DQ[21]"]
set_property PACKAGE_PIN "F28" [get_ports "DDR_DQ[21]"]
set_property slew "FAST" [get_ports "DDR_DQ[21]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQ[21]"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_DQ[20]"]
set_property PACKAGE_PIN "E30" [get_ports "DDR_DQ[20]"]
set_property slew "FAST" [get_ports "DDR_DQ[20]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQ[20]"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_DQ[1]"]
set_property PACKAGE_PIN "E25" [get_ports "DDR_DQ[1]"]
set_property slew "FAST" [get_ports "DDR_DQ[1]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQ[1]"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_DQ[19]"]
set_property PACKAGE_PIN "E28" [get_ports "DDR_DQ[19]"]
set_property slew "FAST" [get_ports "DDR_DQ[19]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQ[19]"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_DQ[18]"]
set_property PACKAGE_PIN "H28" [get_ports "DDR_DQ[18]"]
set_property slew "FAST" [get_ports "DDR_DQ[18]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQ[18]"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_DQ[17]"]
set_property PACKAGE_PIN "G27" [get_ports "DDR_DQ[17]"]
set_property slew "FAST" [get_ports "DDR_DQ[17]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQ[17]"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_DQ[16]"]
set_property PACKAGE_PIN "H27" [get_ports "DDR_DQ[16]"]
set_property slew "FAST" [get_ports "DDR_DQ[16]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQ[16]"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_DQ[15]"]
set_property PACKAGE_PIN "D29" [get_ports "DDR_DQ[15]"]
set_property slew "FAST" [get_ports "DDR_DQ[15]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQ[15]"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_DQ[14]"]
set_property PACKAGE_PIN "D28" [get_ports "DDR_DQ[14]"]
set_property slew "FAST" [get_ports "DDR_DQ[14]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQ[14]"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_DQ[13]"]
set_property PACKAGE_PIN "D30" [get_ports "DDR_DQ[13]"]
set_property slew "FAST" [get_ports "DDR_DQ[13]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQ[13]"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_DQ[12]"]
set_property PACKAGE_PIN "C28" [get_ports "DDR_DQ[12]"]
set_property slew "FAST" [get_ports "DDR_DQ[12]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQ[12]"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_DQ[11]"]
set_property PACKAGE_PIN "A28" [get_ports "DDR_DQ[11]"]
set_property slew "FAST" [get_ports "DDR_DQ[11]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQ[11]"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_DQ[10]"]
set_property PACKAGE_PIN "A30" [get_ports "DDR_DQ[10]"]
set_property slew "FAST" [get_ports "DDR_DQ[10]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQ[10]"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_DQ[0]"]
set_property PACKAGE_PIN "A25" [get_ports "DDR_DQ[0]"]
set_property slew "FAST" [get_ports "DDR_DQ[0]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DQ[0]"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_DM[3]"]
set_property PACKAGE_PIN "K28" [get_ports "DDR_DM[3]"]
set_property slew "FAST" [get_ports "DDR_DM[3]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DM[3]"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_DM[2]"]
set_property PACKAGE_PIN "H29" [get_ports "DDR_DM[2]"]
set_property slew "FAST" [get_ports "DDR_DM[2]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DM[2]"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_DM[1]"]
set_property PACKAGE_PIN "B30" [get_ports "DDR_DM[1]"]
set_property slew "FAST" [get_ports "DDR_DM[1]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DM[1]"]
set_property iostandard "SSTL15_T_DCI" [get_ports "DDR_DM[0]"]
set_property PACKAGE_PIN "C27" [get_ports "DDR_DM[0]"]
set_property slew "FAST" [get_ports "DDR_DM[0]"]
set_property PIO_DIRECTION "BIDIR" [get_ports "DDR_DM[0]"]
set_property iostandard "SSTL15" [get_ports "DDR_CS_n"]
set_property PACKAGE_PIN "N22" [get_ports "DDR_CS_n"]
set_property slew "SLOW" [get_ports "DDR_CS_n"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "DDR_CS_n"]
set_property iostandard "SSTL15" [get_ports "DDR_CKE"]
set_property PACKAGE_PIN "M22" [get_ports "DDR_CKE"]
set_property slew "SLOW" [get_ports "DDR_CKE"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "DDR_CKE"]
set_property iostandard "DIFF_SSTL15" [get_ports "DDR_Clk"]
set_property PACKAGE_PIN "K25" [get_ports "DDR_Clk"]
set_property slew "FAST" [get_ports "DDR_Clk"]
set_property PIO_DIRECTION "INPUT" [get_ports "DDR_Clk"]
set_property iostandard "DIFF_SSTL15" [get_ports "DDR_Clk_n"]
set_property PACKAGE_PIN "J25" [get_ports "DDR_Clk_n"]
set_property slew "FAST" [get_ports "DDR_Clk_n"]
set_property PIO_DIRECTION "INPUT" [get_ports "DDR_Clk_n"]
set_property iostandard "SSTL15" [get_ports "DDR_CAS_n"]
set_property PACKAGE_PIN "M24" [get_ports "DDR_CAS_n"]
set_property slew "SLOW" [get_ports "DDR_CAS_n"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "DDR_CAS_n"]
set_property iostandard "SSTL15" [get_ports "DDR_BankAddr[2]"]
set_property PACKAGE_PIN "M25" [get_ports "DDR_BankAddr[2]"]
set_property slew "SLOW" [get_ports "DDR_BankAddr[2]"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "DDR_BankAddr[2]"]
set_property iostandard "SSTL15" [get_ports "DDR_BankAddr[1]"]
set_property PACKAGE_PIN "M26" [get_ports "DDR_BankAddr[1]"]
set_property slew "SLOW" [get_ports "DDR_BankAddr[1]"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "DDR_BankAddr[1]"]
set_property iostandard "SSTL15" [get_ports "DDR_BankAddr[0]"]
set_property PACKAGE_PIN "M27" [get_ports "DDR_BankAddr[0]"]
set_property slew "SLOW" [get_ports "DDR_BankAddr[0]"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "DDR_BankAddr[0]"]
set_property iostandard "SSTL15" [get_ports "DDR_Addr[9]"]
set_property PACKAGE_PIN "J23" [get_ports "DDR_Addr[9]"]
set_property slew "SLOW" [get_ports "DDR_Addr[9]"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "DDR_Addr[9]"]
set_property iostandard "SSTL15" [get_ports "DDR_Addr[8]"]
set_property PACKAGE_PIN "F27" [get_ports "DDR_Addr[8]"]
set_property slew "SLOW" [get_ports "DDR_Addr[8]"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "DDR_Addr[8]"]
set_property iostandard "SSTL15" [get_ports "DDR_Addr[7]"]
set_property PACKAGE_PIN "K22" [get_ports "DDR_Addr[7]"]
set_property slew "SLOW" [get_ports "DDR_Addr[7]"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "DDR_Addr[7]"]
set_property iostandard "SSTL15" [get_ports "DDR_Addr[6]"]
set_property PACKAGE_PIN "H26" [get_ports "DDR_Addr[6]"]
set_property slew "SLOW" [get_ports "DDR_Addr[6]"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "DDR_Addr[6]"]
set_property iostandard "SSTL15" [get_ports "DDR_Addr[5]"]
set_property PACKAGE_PIN "G24" [get_ports "DDR_Addr[5]"]
set_property slew "SLOW" [get_ports "DDR_Addr[5]"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "DDR_Addr[5]"]
set_property iostandard "SSTL15" [get_ports "DDR_Addr[4]"]
set_property PACKAGE_PIN "J26" [get_ports "DDR_Addr[4]"]
set_property slew "SLOW" [get_ports "DDR_Addr[4]"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "DDR_Addr[4]"]
set_property iostandard "SSTL15" [get_ports "DDR_Addr[3]"]
set_property PACKAGE_PIN "G25" [get_ports "DDR_Addr[3]"]
set_property slew "SLOW" [get_ports "DDR_Addr[3]"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "DDR_Addr[3]"]
set_property iostandard "SSTL15" [get_ports "DDR_Addr[2]"]
set_property PACKAGE_PIN "L27" [get_ports "DDR_Addr[2]"]
set_property slew "SLOW" [get_ports "DDR_Addr[2]"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "DDR_Addr[2]"]
set_property iostandard "SSTL15" [get_ports "DDR_Addr[1]"]
set_property PACKAGE_PIN "K26" [get_ports "DDR_Addr[1]"]
set_property slew "SLOW" [get_ports "DDR_Addr[1]"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "DDR_Addr[1]"]
set_property iostandard "SSTL15" [get_ports "DDR_Addr[14]"]
set_property PACKAGE_PIN "J24" [get_ports "DDR_Addr[14]"]
set_property slew "SLOW" [get_ports "DDR_Addr[14]"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "DDR_Addr[14]"]
set_property iostandard "SSTL15" [get_ports "DDR_Addr[13]"]
set_property PACKAGE_PIN "H23" [get_ports "DDR_Addr[13]"]
set_property slew "SLOW" [get_ports "DDR_Addr[13]"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "DDR_Addr[13]"]
set_property iostandard "SSTL15" [get_ports "DDR_Addr[12]"]
set_property PACKAGE_PIN "K23" [get_ports "DDR_Addr[12]"]
set_property slew "SLOW" [get_ports "DDR_Addr[12]"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "DDR_Addr[12]"]
set_property iostandard "SSTL15" [get_ports "DDR_Addr[11]"]
set_property PACKAGE_PIN "H24" [get_ports "DDR_Addr[11]"]
set_property slew "SLOW" [get_ports "DDR_Addr[11]"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "DDR_Addr[11]"]
set_property iostandard "SSTL15" [get_ports "DDR_Addr[10]"]
set_property PACKAGE_PIN "G26" [get_ports "DDR_Addr[10]"]
set_property slew "SLOW" [get_ports "DDR_Addr[10]"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "DDR_Addr[10]"]
set_property iostandard "SSTL15" [get_ports "DDR_Addr[0]"]
set_property PACKAGE_PIN "L25" [get_ports "DDR_Addr[0]"]
set_property slew "SLOW" [get_ports "DDR_Addr[0]"]
set_property PIO_DIRECTION "OUTPUT" [get_ports "DDR_Addr[0]"]
set_property iostandard "LVCMOS18" [get_ports "PS_PORB"]
set_property PACKAGE_PIN "D21" [get_ports "PS_PORB"]
set_property slew "fast" [get_ports "PS_PORB"]
set_property iostandard "LVCMOS18" [get_ports "PS_SRSTB"]
set_property PACKAGE_PIN "B19" [get_ports "PS_SRSTB"]
set_property slew "fast" [get_ports "PS_SRSTB"]
set_property iostandard "LVCMOS18" [get_ports "PS_CLK"]
set_property PACKAGE_PIN "A22" [get_ports "PS_CLK"]
set_property slew "fast" [get_ports "PS_CLK"]

