## This file is a general .xdc for the Basys3 rev B board
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

## Clock signal
set_property -dict {PACKAGE_PIN W5 IOSTANDARD LVCMOS33} [get_ports clk]
create_clock -period 10.000 -name sys_clk_pin -waveform {0.000 5.000} -add [get_ports clk]


## Switches
set_property -dict {PACKAGE_PIN V17 IOSTANDARD LVCMOS33} [get_ports side_car_detected]
#set_property -dict { PACKAGE_PIN V16   IOSTANDARD LVCMOS33 } [get_ports {sw[1]}]
#set_property -dict { PACKAGE_PIN W16   IOSTANDARD LVCMOS33 } [get_ports {sw[2]}]
#set_property -dict { PACKAGE_PIN W17   IOSTANDARD LVCMOS33 } [get_ports {sw[3]}]
#set_property -dict { PACKAGE_PIN W15   IOSTANDARD LVCMOS33 } [get_ports {sw[4]}]
#set_property -dict { PACKAGE_PIN V15   IOSTANDARD LVCMOS33 } [get_ports {sw[5]}]
#set_property -dict { PACKAGE_PIN W14   IOSTANDARD LVCMOS33 } [get_ports {sw[6]}]
#set_property -dict { PACKAGE_PIN W13   IOSTANDARD LVCMOS33 } [get_ports {sw[7]}]
#set_property -dict { PACKAGE_PIN V2    IOSTANDARD LVCMOS33 } [get_ports {sw[8]}]
#set_property -dict { PACKAGE_PIN T3    IOSTANDARD LVCMOS33 } [get_ports {sw[9]}]
#set_property -dict { PACKAGE_PIN T2    IOSTANDARD LVCMOS33 } [get_ports {sw[10]}]
#set_property -dict { PACKAGE_PIN R3    IOSTANDARD LVCMOS33 } [get_ports {sw[11]}]
#set_property -dict { PACKAGE_PIN W2    IOSTANDARD LVCMOS33 } [get_ports {sw[12]}]
#set_property -dict { PACKAGE_PIN U1    IOSTANDARD LVCMOS33 } [get_ports {sw[13]}]
#set_property -dict { PACKAGE_PIN T1    IOSTANDARD LVCMOS33 } [get_ports {sw[14]}]
#set_property -dict { PACKAGE_PIN R2    IOSTANDARD LVCMOS33 } [get_ports {sw[15]}]


## LEDs
set_property -dict {PACKAGE_PIN U16 IOSTANDARD LVCMOS33} [get_ports main_red]
set_property -dict {PACKAGE_PIN E19 IOSTANDARD LVCMOS33} [get_ports main_green]
set_property -dict {PACKAGE_PIN U19 IOSTANDARD LVCMOS33} [get_ports main_yellow]
set_property -dict {PACKAGE_PIN V19 IOSTANDARD LVCMOS33} [get_ports side_red]
set_property -dict {PACKAGE_PIN W18 IOSTANDARD LVCMOS33} [get_ports side_green]
set_property -dict {PACKAGE_PIN U15 IOSTANDARD LVCMOS33} [get_ports side_yellow]
#set_property -dict { PACKAGE_PIN U14   IOSTANDARD LVCMOS33 } [get_ports {led[6]}]
#set_property -dict { PACKAGE_PIN V14   IOSTANDARD LVCMOS33 } [get_ports {led[7]}]
#set_property -dict { PACKAGE_PIN V13   IOSTANDARD LVCMOS33 } [get_ports {led[8]}]
#set_property -dict { PACKAGE_PIN V3    IOSTANDARD LVCMOS33 } [get_ports {led[9]}]
#set_property -dict { PACKAGE_PIN W3    IOSTANDARD LVCMOS33 } [get_ports {led[10]}]
#set_property -dict { PACKAGE_PIN U3    IOSTANDARD LVCMOS33 } [get_ports {led[11]}]
#set_property -dict { PACKAGE_PIN P3    IOSTANDARD LVCMOS33 } [get_ports {led[12]}]
#set_property -dict { PACKAGE_PIN N3    IOSTANDARD LVCMOS33 } [get_ports {led[13]}]
#set_property -dict { PACKAGE_PIN P1    IOSTANDARD LVCMOS33 } [get_ports {led[14]}]
#set_property -dict { PACKAGE_PIN L1    IOSTANDARD LVCMOS33 } [get_ports {led[15]}]


##7 Segment Display
#set_property -dict { PACKAGE_PIN W7   IOSTANDARD LVCMOS33 } [get_ports {seg[0]}]
#set_property -dict { PACKAGE_PIN W6   IOSTANDARD LVCMOS33 } [get_ports {seg[1]}]
#set_property -dict { PACKAGE_PIN U8   IOSTANDARD LVCMOS33 } [get_ports {seg[2]}]
#set_property -dict { PACKAGE_PIN V8   IOSTANDARD LVCMOS33 } [get_ports {seg[3]}]
#set_property -dict { PACKAGE_PIN U5   IOSTANDARD LVCMOS33 } [get_ports {seg[4]}]
#set_property -dict { PACKAGE_PIN V5   IOSTANDARD LVCMOS33 } [get_ports {seg[5]}]
#set_property -dict { PACKAGE_PIN U7   IOSTANDARD LVCMOS33 } [get_ports {seg[6]}]

#set_property -dict { PACKAGE_PIN V7   IOSTANDARD LVCMOS33 } [get_ports dp]

#set_property -dict { PACKAGE_PIN U2   IOSTANDARD LVCMOS33 } [get_ports {an[0]}]
#set_property -dict { PACKAGE_PIN U4   IOSTANDARD LVCMOS33 } [get_ports {an[1]}]
#set_property -dict { PACKAGE_PIN V4   IOSTANDARD LVCMOS33 } [get_ports {an[2]}]
#set_property -dict { PACKAGE_PIN W4   IOSTANDARD LVCMOS33 } [get_ports {an[3]}]


##Buttons
set_property -dict {PACKAGE_PIN U18 IOSTANDARD LVCMOS33} [get_ports rst]
#set_property -dict { PACKAGE_PIN T18   IOSTANDARD LVCMOS33 } [get_ports btnU]
#set_property -dict { PACKAGE_PIN W19   IOSTANDARD LVCMOS33 } [get_ports btnL]
#set_property -dict { PACKAGE_PIN T17   IOSTANDARD LVCMOS33 } [get_ports btnR]
#set_property -dict { PACKAGE_PIN U17   IOSTANDARD LVCMOS33 } [get_ports btnD]


##Pmod Header JA
#set_property -dict { PACKAGE_PIN J1   IOSTANDARD LVCMOS33 } [get_ports {JA[0]}];#Sch name = JA1
#set_property -dict { PACKAGE_PIN L2   IOSTANDARD LVCMOS33 } [get_ports {JA[1]}];#Sch name = JA2
#set_property -dict { PACKAGE_PIN J2   IOSTANDARD LVCMOS33 } [get_ports {JA[2]}];#Sch name = JA3
#set_property -dict { PACKAGE_PIN G2   IOSTANDARD LVCMOS33 } [get_ports {JA[3]}];#Sch name = JA4
#set_property -dict { PACKAGE_PIN H1   IOSTANDARD LVCMOS33 } [get_ports {JA[4]}];#Sch name = JA7
#set_property -dict { PACKAGE_PIN K2   IOSTANDARD LVCMOS33 } [get_ports {JA[5]}];#Sch name = JA8
#set_property -dict { PACKAGE_PIN H2   IOSTANDARD LVCMOS33 } [get_ports {JA[6]}];#Sch name = JA9
#set_property -dict { PACKAGE_PIN G3   IOSTANDARD LVCMOS33 } [get_ports {JA[7]}];#Sch name = JA10

##Pmod Header JB
#set_property -dict { PACKAGE_PIN A14   IOSTANDARD LVCMOS33 } [get_ports {JB[0]}];#Sch name = JB1
#set_property -dict { PACKAGE_PIN A16   IOSTANDARD LVCMOS33 } [get_ports {JB[1]}];#Sch name = JB2
#set_property -dict { PACKAGE_PIN B15   IOSTANDARD LVCMOS33 } [get_ports {JB[2]}];#Sch name = JB3
#set_property -dict { PACKAGE_PIN B16   IOSTANDARD LVCMOS33 } [get_ports {JB[3]}];#Sch name = JB4
#set_property -dict { PACKAGE_PIN A15   IOSTANDARD LVCMOS33 } [get_ports {JB[4]}];#Sch name = JB7
#set_property -dict { PACKAGE_PIN A17   IOSTANDARD LVCMOS33 } [get_ports {JB[5]}];#Sch name = JB8
#set_property -dict { PACKAGE_PIN C15   IOSTANDARD LVCMOS33 } [get_ports {JB[6]}];#Sch name = JB9
#set_property -dict { PACKAGE_PIN C16   IOSTANDARD LVCMOS33 } [get_ports {JB[7]}];#Sch name = JB10

##Pmod Header JC
#set_property -dict { PACKAGE_PIN K17   IOSTANDARD LVCMOS33 } [get_ports {JC[0]}];#Sch name = JC1
#set_property -dict { PACKAGE_PIN M18   IOSTANDARD LVCMOS33 } [get_ports {JC[1]}];#Sch name = JC2
#set_property -dict { PACKAGE_PIN N17   IOSTANDARD LVCMOS33 } [get_ports {JC[2]}];#Sch name = JC3
#set_property -dict { PACKAGE_PIN P18   IOSTANDARD LVCMOS33 } [get_ports {JC[3]}];#Sch name = JC4
#set_property -dict { PACKAGE_PIN L17   IOSTANDARD LVCMOS33 } [get_ports {JC[4]}];#Sch name = JC7
#set_property -dict { PACKAGE_PIN M19   IOSTANDARD LVCMOS33 } [get_ports {JC[5]}];#Sch name = JC8
#set_property -dict { PACKAGE_PIN P17   IOSTANDARD LVCMOS33 } [get_ports {JC[6]}];#Sch name = JC9
#set_property -dict { PACKAGE_PIN R18   IOSTANDARD LVCMOS33 } [get_ports {JC[7]}];#Sch name = JC10

##Pmod Header JXADC
#set_property -dict { PACKAGE_PIN J3   IOSTANDARD LVCMOS33 } [get_ports {JXADC[0]}];#Sch name = XA1_P
#set_property -dict { PACKAGE_PIN L3   IOSTANDARD LVCMOS33 } [get_ports {JXADC[1]}];#Sch name = XA2_P
#set_property -dict { PACKAGE_PIN M2   IOSTANDARD LVCMOS33 } [get_ports {JXADC[2]}];#Sch name = XA3_P
#set_property -dict { PACKAGE_PIN N2   IOSTANDARD LVCMOS33 } [get_ports {JXADC[3]}];#Sch name = XA4_P
#set_property -dict { PACKAGE_PIN K3   IOSTANDARD LVCMOS33 } [get_ports {JXADC[4]}];#Sch name = XA1_N
#set_property -dict { PACKAGE_PIN M3   IOSTANDARD LVCMOS33 } [get_ports {JXADC[5]}];#Sch name = XA2_N
#set_property -dict { PACKAGE_PIN M1   IOSTANDARD LVCMOS33 } [get_ports {JXADC[6]}];#Sch name = XA3_N
#set_property -dict { PACKAGE_PIN N1   IOSTANDARD LVCMOS33 } [get_ports {JXADC[7]}];#Sch name = XA4_N


##VGA Connector
#set_property -dict { PACKAGE_PIN G19   IOSTANDARD LVCMOS33 } [get_ports {vgaRed[0]}]
#set_property -dict { PACKAGE_PIN H19   IOSTANDARD LVCMOS33 } [get_ports {vgaRed[1]}]
#set_property -dict { PACKAGE_PIN J19   IOSTANDARD LVCMOS33 } [get_ports {vgaRed[2]}]
#set_property -dict { PACKAGE_PIN N19   IOSTANDARD LVCMOS33 } [get_ports {vgaRed[3]}]
#set_property -dict { PACKAGE_PIN N18   IOSTANDARD LVCMOS33 } [get_ports {vgaBlue[0]}]
#set_property -dict { PACKAGE_PIN L18   IOSTANDARD LVCMOS33 } [get_ports {vgaBlue[1]}]
#set_property -dict { PACKAGE_PIN K18   IOSTANDARD LVCMOS33 } [get_ports {vgaBlue[2]}]
#set_property -dict { PACKAGE_PIN J18   IOSTANDARD LVCMOS33 } [get_ports {vgaBlue[3]}]
#set_property -dict { PACKAGE_PIN J17   IOSTANDARD LVCMOS33 } [get_ports {vgaGreen[0]}]
#set_property -dict { PACKAGE_PIN H17   IOSTANDARD LVCMOS33 } [get_ports {vgaGreen[1]}]
#set_property -dict { PACKAGE_PIN G17   IOSTANDARD LVCMOS33 } [get_ports {vgaGreen[2]}]
#set_property -dict { PACKAGE_PIN D17   IOSTANDARD LVCMOS33 } [get_ports {vgaGreen[3]}]
#set_property -dict { PACKAGE_PIN P19   IOSTANDARD LVCMOS33 } [get_ports Hsync]
#set_property -dict { PACKAGE_PIN R19   IOSTANDARD LVCMOS33 } [get_ports Vsync]


##USB-RS232 Interface
#set_property -dict { PACKAGE_PIN B18   IOSTANDARD LVCMOS33 } [get_ports RsRx]
#set_property -dict { PACKAGE_PIN A18   IOSTANDARD LVCMOS33 } [get_ports RsTx]


##USB HID (PS/2)
#set_property -dict { PACKAGE_PIN C17   IOSTANDARD LVCMOS33   PULLUP true } [get_ports PS2Clk]
#set_property -dict { PACKAGE_PIN B17   IOSTANDARD LVCMOS33   PULLUP true } [get_ports PS2Data]


##Quad SPI Flash
##Note that CCLK_0 cannot be placed in 7 series devices. You can access it using the
##STARTUPE2 primitive.
#set_property -dict { PACKAGE_PIN D18   IOSTANDARD LVCMOS33 } [get_ports {QspiDB[0]}]
#set_property -dict { PACKAGE_PIN D19   IOSTANDARD LVCMOS33 } [get_ports {QspiDB[1]}]
#set_property -dict { PACKAGE_PIN G18   IOSTANDARD LVCMOS33 } [get_ports {QspiDB[2]}]
#set_property -dict { PACKAGE_PIN F18   IOSTANDARD LVCMOS33 } [get_ports {QspiDB[3]}]
#set_property -dict { PACKAGE_PIN K19   IOSTANDARD LVCMOS33 } [get_ports QspiCSn]


## Configuration options, can be used for all designs
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]

## SPI configuration mode options for QSPI boot, can be used for all designs
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 33 [current_design]
set_property CONFIG_MODE SPIx4 [current_design]

set_property LOC W5 [get_cells clk_IBUF_inst]
set_property LOC E19 [get_cells main_green_OBUF_inst]
set_property LOC U16 [get_cells main_red_OBUF_inst]
set_property LOC U19 [get_cells main_yellow_OBUF_inst]
set_property LOC U18 [get_cells rst_IBUF_inst]
set_property LOC V17 [get_cells side_car_detected_IBUF_inst]
set_property LOC W18 [get_cells side_green_OBUF_inst]
set_property LOC V19 [get_cells side_red_OBUF_inst]
set_property LOC U15 [get_cells side_yellow_OBUF_inst]
set_property BEL AFF [get_cells {fsm/FSM_sequential_c_state_reg[0]}]
set_property BEL AFF [get_cells {fsm/FSM_sequential_c_state_reg[1]}]
set_property BEL CFF [get_cells {timer/count_reg[0]}]
set_property BEL BFF [get_cells {timer/count_reg[1]}]
set_property BEL CFF [get_cells {timer/count_reg[2]}]
set_property BEL DFF [get_cells {timer/count_reg[3]}]
set_property BEL AFF [get_cells {timer/prev_state_reg[0]}]
set_property BEL AFF [get_cells {timer/prev_state_reg[1]}]
set_property BEL A6LUT [get_cells fsm/main_green_OBUF_inst_i_1]
set_property BEL A6LUT [get_cells fsm/main_red_OBUF_inst_i_1]
set_property BEL B6LUT [get_cells fsm/main_yellow_OBUF_inst_i_1]
set_property BEL B6LUT [get_cells {timer/FSM_sequential_c_state[0]_i_2}]
set_property BEL C6LUT [get_cells fsm/side_green_OBUF_inst_i_1]
set_property BEL D6LUT [get_cells fsm/side_red_OBUF_inst_i_1]
set_property BEL B6LUT [get_cells fsm/side_yellow_OBUF_inst_i_1]
set_property LOC BUFGCTRL_X0Y0 [get_cells clk_IBUF_BUFG_inst]
set_property LOC SLICE_X0Y6 [get_cells {fsm/FSM_sequential_c_state_reg[0]}]
set_property LOC SLICE_X0Y5 [get_cells {fsm/FSM_sequential_c_state_reg[1]}]
set_property LOC SLICE_X0Y6 [get_cells {timer/count_reg[0]}]
set_property LOC SLICE_X0Y5 [get_cells {timer/count_reg[1]}]
set_property LOC SLICE_X0Y5 [get_cells {timer/count_reg[2]}]
set_property LOC SLICE_X0Y6 [get_cells {timer/count_reg[3]}]
set_property LOC SLICE_X0Y4 [get_cells {timer/prev_state_reg[0]}]
set_property LOC SLICE_X0Y7 [get_cells {timer/prev_state_reg[1]}]
set_property LOC SLICE_X0Y7 [get_cells fsm/main_green_OBUF_inst_i_1]
set_property LOC SLICE_X0Y4 [get_cells fsm/main_red_OBUF_inst_i_1]
set_property LOC SLICE_X0Y7 [get_cells fsm/main_yellow_OBUF_inst_i_1]
set_property LOC SLICE_X0Y6 [get_cells {timer/FSM_sequential_c_state[0]_i_2}]
set_property LOC SLICE_X0Y7 [get_cells fsm/side_green_OBUF_inst_i_1]
set_property LOC SLICE_X0Y7 [get_cells fsm/side_red_OBUF_inst_i_1]
set_property LOC SLICE_X0Y4 [get_cells fsm/side_yellow_OBUF_inst_i_1]
set_property FIXED_ROUTE { { CLBLL_LL_B CLBLL_LOGIC_OUTS13 NN6BEG1 WW2BEG0 NN6BEG1 NR1BEG1 IMUX_L34 IOI_OLOGIC0_D1 LIOI_OLOGIC0_OQ LIOI_O0 }  } [get_nets fsm/main_yellow_OBUF]
set_property FIXED_ROUTE { { CLBLL_LL_A CLBLL_LOGIC_OUTS12 SL1BEG0 WW2BEG0 IMUX_L34 IOI_OLOGIC1_D1 LIOI_OLOGIC1_OQ LIOI_O1 }  } [get_nets {fsm/D[0]}]
set_property FIXED_ROUTE { { CLBLL_LL_B CLBLL_LOGIC_OUTS13 WW2BEG1 FAN_ALT7 FAN_BOUNCE7 IMUX_L34 IOI_OLOGIC0_D1 LIOI_OLOGIC0_OQ LIOI_O0 }  } [get_nets fsm/side_yellow_OBUF]
set_property FIXED_ROUTE { { CLBLL_LL_C CLBLL_LOGIC_OUTS14 NN6BEG2 NW6BEG2 NL1BEG1 IMUX_L34 IOI_OLOGIC0_D1 LIOI_OLOGIC0_OQ LIOI_O0 }  } [get_nets fsm/side_green_OBUF]
set_property FIXED_ROUTE { { CLBLL_LL_A CLBLL_LOGIC_OUTS12 NN6BEG0 LV_L0 NN6BEG3 NW6BEG3 NL1BEG2 NL1BEG1 IMUX_L34 IOI_OLOGIC1_D1 LIOI_OLOGIC1_OQ LIOI_O1 }  } [get_nets fsm/main_green_OBUF]
set_property FIXED_ROUTE { { CLBLL_LL_D CLBLL_LOGIC_OUTS15 NN6BEG3 NW6BEG3 NL1BEG2 NL1BEG1 IMUX_L34 IOI_OLOGIC1_D1 LIOI_OLOGIC1_OQ LIOI_O1 }  } [get_nets fsm/side_red_OBUF]
set_property FIXED_ROUTE { { CLK_BUFG_BUFGCTRL0_O CLK_BUFG_CK_GCLK0 CLK_BUFG_REBUF_R_CK_GCLK0_BOT CLK_HROW_CK_MUX_OUT_L8 CLK_HROW_CK_HCLK_OUT_L8 CLK_HROW_CK_BUFHCLK_L8 <8>HCLK_LEAF_CLK_B_BOTL5  { <18>GCLK_L_B11_WEST CLK_L1 CLBLL_LL_CLK }   { <19>GCLK_L_B11_WEST CLK_L1 CLBLL_LL_CLK }   { <20>GCLK_L_B11_WEST CLK_L1 CLBLL_LL_CLK }  <21>GCLK_L_B11_WEST CLK_L1 CLBLL_LL_CLK }  } [get_nets clk_IBUF_BUFG]
set_property FIXED_ROUTE { { IOB_IBUF0 RIOI_I0 RIOI_ILOGIC0_D IOI_ILOGIC0_O RIOI_I2GCLK_TOP0 HCLK_CMT_CK_IN0 CLK_HROW_BOT_R_CK_BUFG_CASCO0 CLK_BUFG_BUFGCTRL0_I0 }  } [get_nets clk_IBUF]
set_property FIXED_ROUTE { { IOB_IBUF1 LIOI_I1 LIOI_ILOGIC1_D IOI_ILOGIC1_O IOI_LOGIC_OUTS18_0 INT_INTERFACE_LOGIC_OUTS_L18 SE6BEG0 SL1BEG0 IMUX_L17 CLBLL_LL_B3 }  } [get_nets side_car_detected_IBUF]
set_property FIXED_ROUTE { { IOB_IBUF1 LIOI_I1 LIOI_ILOGIC1_D IOI_ILOGIC1_O IOI_LOGIC_OUTS18_0 INT_INTERFACE_LOGIC_OUTS_L18 SS6BEG0 SL1BEG0 ER1BEG1  { ER1BEG2 CTRL_L1 CLBLL_LL_SR }  SL1BEG1 ER1BEG2 CTRL_L1 CLBLL_LL_SR }  } [get_nets rst_IBUF]
