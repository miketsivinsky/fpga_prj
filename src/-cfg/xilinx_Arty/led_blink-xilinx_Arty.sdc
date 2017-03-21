#--------------------------------------------------------------------------------------------------
#      project:       led_blink
#      cfg:           xilinx_Arty
#
#      description:   only for test project organisation and build scripts development
#--------------------------------------------------------------------------------------------------

#---
create_clock -period 10.000 -name clk -waveform {0.000 5.000} [get_ports clk]
#create_clock -period 10 [get_ports clk]
