#--------------------------------------------------------------------------------------------------
#	project:       slon1_ip
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
set_property -dict { PACKAGE_PIN G6 IOSTANDARD LVCMOS33 } [get_ports { dac_clk }]; # LED[0] red

#--------------------------------------------------------------------------------------------------
#    dout
#--------------------------------------------------------------------------------------------------
set_property PACKAGE_PIN T10 [get_ports {dout[3]}]
set_property PACKAGE_PIN T9  [get_ports {dout[2]}]
set_property PACKAGE_PIN J5  [get_ports {dout[1]}]
set_property PACKAGE_PIN H5  [get_ports {dout[0]}]

set_property IOSTANDARD LVCMOS33 [get_ports {dout}]
#set_property IOB TRUE [get_ports {dout}]

