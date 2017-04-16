#--------------------------------------------------------------------------------------------------
#	project:       slon_ip
#	cfg:           xilinx_Arty
#
#	description:   test and study xilinx ip workflow
#--------------------------------------------------------------------------------------------------

#--------------------------------------------------------------------------------------------------
#    ref_clk
#--------------------------------------------------------------------------------------------------
set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]

set_property -dict {PACKAGE_PIN E3 IOSTANDARD LVCMOS33} [get_ports ref_clk]
set_switching_activity -deassert_resets

#--------------------------------------------------------------------------------------------------
#    dac_clk
#--------------------------------------------------------------------------------------------------
set_property -dict { PACKAGE_PIN H5 IOSTANDARD LVCMOS33 } [get_ports { out_clk }]; # LED[0] green

#--------------------------------------------------------------------------------------------------
#    dout
#--------------------------------------------------------------------------------------------------
set_property PACKAGE_PIN K2  [get_ports {dout[7]}]
set_property PACKAGE_PIN H4  [get_ports {dout[6]}]
set_property PACKAGE_PIN G4  [get_ports {dout[5]}]
set_property PACKAGE_PIN E1  [get_ports {dout[4]}]

set_property PACKAGE_PIN K1  [get_ports {dout[3]}]
set_property PACKAGE_PIN J3  [get_ports {dout[2]}]
set_property PACKAGE_PIN G3  [get_ports {dout[1]}]
set_property PACKAGE_PIN G6  [get_ports {dout[0]}]

set_property IOSTANDARD LVCMOS33 [get_ports {dout}]
#set_property IOB TRUE [get_ports {dout}]


#set_property -dict { PACKAGE_PIN H5    IOSTANDARD LVCMOS33 } [get_ports { led[0] }]; #IO_L24N_T3_35 Sch=led[4]
#set_property -dict { PACKAGE_PIN J5    IOSTANDARD LVCMOS33 } [get_ports { led[1] }]; #IO_25_35 Sch=led[5]
#set_property -dict { PACKAGE_PIN T9    IOSTANDARD LVCMOS33 } [get_ports { led[2] }]; #IO_L24P_T3_A01_D17_14 Sch=led[6]
#set_property -dict { PACKAGE_PIN T10   IOSTANDARD LVCMOS33 } [get_ports { led[3] }]; #IO_L24N_T3_A00_D16_14 Sch=led[7]

#set_property -dict { PACKAGE_PIN K2    IOSTANDARD LVCMOS33 } [get_ports { led3_b }]; #IO_L23P_T3_35 Sch=led3_b
#set_property -dict { PACKAGE_PIN H4    IOSTANDARD LVCMOS33 } [get_ports { led2_b }]; #IO_L21N_T3_DQS_35 Sch=led2_b
#set_property -dict { PACKAGE_PIN G4    IOSTANDARD LVCMOS33 } [get_ports { led1_b }]; #IO_L20P_T3_35 Sch=led1_b
#set_property -dict { PACKAGE_PIN E1    IOSTANDARD LVCMOS33 } [get_ports { led0_b }]; #IO_L18N_T2_35 Sch=led0_b

#set_property -dict { PACKAGE_PIN H6    IOSTANDARD LVCMOS33 } [get_ports { led3_g }]; #IO_L24P_T3_35 Sch=led3_g
#set_property -dict { PACKAGE_PIN J2    IOSTANDARD LVCMOS33 } [get_ports { led2_g }]; #IO_L22N_T3_35 Sch=led2_g
#set_property -dict { PACKAGE_PIN J4    IOSTANDARD LVCMOS33 } [get_ports { led1_g }]; #IO_L21P_T3_DQS_35 Sch=led1_g
#set_property -dict { PACKAGE_PIN F6    IOSTANDARD LVCMOS33 } [get_ports { led0_g }]; #IO_L19N_T3_VREF_35 Sch=led0_g

#set_property -dict { PACKAGE_PIN K1    IOSTANDARD LVCMOS33 } [get_ports { led3_r }]; #IO_L23N_T3_35 Sch=led3_r
#set_property -dict { PACKAGE_PIN J3    IOSTANDARD LVCMOS33 } [get_ports { led2_r }]; #IO_L22P_T3_35 Sch=led2_r
#set_property -dict { PACKAGE_PIN G3    IOSTANDARD LVCMOS33 } [get_ports { led1_r }]; #IO_L20N_T3_35 Sch=led1_r
#set_property -dict { PACKAGE_PIN G6    IOSTANDARD LVCMOS33 } [get_ports { led0_r }]; #IO_L19P_T3_35 Sch=led0_r
