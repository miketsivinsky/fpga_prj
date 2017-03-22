#--------------------------------------------------------------------------------------------------
#	project:       tq1m
#	cfg:           altera_SoC
#
#	description:   based at Harry Zhurov tq1 sdc 'slon'
#--------------------------------------------------------------------------------------------------

#--------------------------------------------------------------------------------------------------
#    ref_clk 
#--------------------------------------------------------------------------------------------------
set_instance_assignment -name IO_STANDARD "1.5 V" -to ref_clk


#--------------------------------------------------------------------------------------------------
#    dac_clk, dout
#--------------------------------------------------------------------------------------------------
set_global_assignment -name ASSIGNMENT_GROUP_MEMBER dac_clk              -section_id DAC_GROUP
set_global_assignment -name ASSIGNMENT_GROUP_MEMBER dout[0..1]           -section_id DAC_GROUP

set_instance_assignment -name CURRENT_STRENGTH_NEW 4MA                   -to DAC_GROUP
set_instance_assignment -name SLEW_RATE 1                                -to DAC_GROUP
set_instance_assignment -name FAST_OUTPUT_REGISTER ON                    -to DAC_GROUP

set_instance_assignment -name CLAMPING_DIODE ON                          -to DAC_GROUP
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL"                  -to DAC_GROUP

