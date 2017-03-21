#--------------------------------------------------------------------------------------------------
#      project:       led_blink
#      cfg:           xilinx_Arty
#
#      description:   only for test project organisation and build scripts development
#--------------------------------------------------------------------------------------------------

#---
set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]

#---
set_property -dict {PACKAGE_PIN E3 IOSTANDARD LVCMOS33} [get_ports clk]
set_switching_activity -deassert_resets

#---
set_property PACKAGE_PIN T10 [get_ports {LED[3]}]
set_property PACKAGE_PIN T9  [get_ports {LED[2]}]
set_property PACKAGE_PIN J5  [get_ports {LED[1]}]
set_property PACKAGE_PIN H5  [get_ports {LED[0]}]

#---
set_property IOSTANDARD LVCMOS33 [get_ports {LED}]
set_property IOB TRUE [get_ports {LED}]
