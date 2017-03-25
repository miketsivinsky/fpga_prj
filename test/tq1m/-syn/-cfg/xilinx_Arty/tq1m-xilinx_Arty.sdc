#--------------------------------------------------------------------------------------------------
#	project:       tq1m
#	cfg:           xilinx_Arty
#
#	description:   based at Harry Zhurov tq1 sdc 'slon'
#--------------------------------------------------------------------------------------------------

#---
#create_clock -name ref_clk -period 10.000 -waveform {0.000 5.000} [get_ports ref_clk]
#create_generated_clock -name clk -source [get_ports ref_clk]
#get_clocks -of_objects [get_ports ref_clk]
