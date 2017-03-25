#--------------------------------------------------------------------------------------------------
#	project:       slon1_ip
#	cfg:           xilinx_Arty
#
#	description:   test and study xilinx ip workflow
#--------------------------------------------------------------------------------------------------

#---
create_clock -name ref_clk -period 10.000 -waveform {0.000 5.000} [get_ports ref_clk]
#create_generated_clock -name clk -source [get_ports ref_clk]
#get_clocks -of_objects [get_ports ref_clk]
