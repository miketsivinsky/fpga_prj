#--------------------------------------------------------------------------------------------------
#	project:       tq1m
#	cfg:           altera_DE1
#
#	description:   based at Harry Zhurov tq1 sdc 'slon'
#--------------------------------------------------------------------------------------------------

#--------------------------------------------------------------------------------------------------
#    ref_clk 
#--------------------------------------------------------------------------------------------------
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to ref_clk

#--------------------------------------------------------------------------------------------------
#    dac_clk, dout
#--------------------------------------------------------------------------------------------------
set_global_assignment -name ASSIGNMENT_GROUP_MEMBER dac_clk              -section_id DAC_GROUP
set_global_assignment -name ASSIGNMENT_GROUP_MEMBER dout[0..7]           -section_id DAC_GROUP

set_instance_assignment -name CURRENT_STRENGTH_NEW 4MA                   -to DAC_GROUP
set_instance_assignment -name FAST_OUTPUT_REGISTER OFF                   -to DAC_GROUP

set_instance_assignment -name PCI_IO ON                                  -to DAC_GROUP
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL"                  -to DAC_GROUP

#--------------------------------------------------------------------------------------------------
set_instance_assignment -name OUTPUT_PIN_LOAD 20 -to dac_clk

set_instance_assignment -name OUTPUT_PIN_LOAD 20 -to dout[0]
set_instance_assignment -name OUTPUT_PIN_LOAD 20 -to dout[1]
set_instance_assignment -name OUTPUT_PIN_LOAD 20 -to dout[2]
set_instance_assignment -name OUTPUT_PIN_LOAD 20 -to dout[3]
set_instance_assignment -name OUTPUT_PIN_LOAD 20 -to dout[4]
set_instance_assignment -name OUTPUT_PIN_LOAD 20 -to dout[5]
set_instance_assignment -name OUTPUT_PIN_LOAD 20 -to dout[6]
set_instance_assignment -name OUTPUT_PIN_LOAD 20 -to dout[7]
