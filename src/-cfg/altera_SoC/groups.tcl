#--------------------------------------------------------------------------------------------------
#      project:       led_blink
#      cfg:           altera_SoC
#
#      description:   only for test project organisation and build scripts development
#--------------------------------------------------------------------------------------------------

#--------------------------------------------------------------------------------------------------
#    clock 
#--------------------------------------------------------------------------------------------------
set_instance_assignment -name IO_STANDARD "1.5 V" -to clk

#--------------------------------------------------------------------------------------------------
#    LED
#--------------------------------------------------------------------------------------------------
set_global_assignment -name ASSIGNMENT_GROUP_MEMBER LED[0..3]            -section_id LED_GROUP

set_instance_assignment -name CURRENT_STRENGTH_NEW 4MA                   -to LED_GROUP
set_instance_assignment -name SLEW_RATE 1                                -to LED_GROUP
set_instance_assignment -name FAST_OUTPUT_REGISTER ON                    -to LED_GROUP

set_instance_assignment -name CLAMPING_DIODE ON                          -to LED_GROUP
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL"                  -to LED_GROUP
