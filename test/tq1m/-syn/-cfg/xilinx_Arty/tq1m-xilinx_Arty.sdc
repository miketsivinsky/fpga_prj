#--------------------------------------------------------------------------------------------------
#	project:       tq1m
#	cfg:           xilinx_Arty
#
#	description:   based at Harry Zhurov tq1 sdc 'slon'
#--------------------------------------------------------------------------------------------------

#---
create_clock -period 10.000 -name clk -waveform {0.000 5.000} [get_ports ref_clk]
