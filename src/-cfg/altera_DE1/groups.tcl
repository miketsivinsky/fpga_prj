#--------------------------------------------------------------------------------------------------
#      project:       led_blink
#      cfg:           altera_DE1
#
#      description:   only for test project organisation and build scripts development
#--------------------------------------------------------------------------------------------------

#--------------------------------------------------------------------------------------------------
#    clock 
#--------------------------------------------------------------------------------------------------
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to clk

#--------------------------------------------------------------------------------------------------
#    LED
#--------------------------------------------------------------------------------------------------
set_global_assignment -name ASSIGNMENT_GROUP_MEMBER LED[0..7]            -section_id LED_GROUP

set_instance_assignment -name CURRENT_STRENGTH_NEW 4MA                   -to LED_GROUP
set_instance_assignment -name FAST_OUTPUT_REGISTER ON                    -to LED_GROUP

set_instance_assignment -name PCI_IO ON                                  -to LED_GROUP
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL"                  -to LED_GROUP

#--------------------------------------------------------------------------------------------------
set_instance_assignment -name OUTPUT_PIN_LOAD 20 -to LED[0]
set_instance_assignment -name OUTPUT_PIN_LOAD 20 -to LED[1]
set_instance_assignment -name OUTPUT_PIN_LOAD 20 -to LED[2]
set_instance_assignment -name OUTPUT_PIN_LOAD 20 -to LED[3]
set_instance_assignment -name OUTPUT_PIN_LOAD 20 -to LED[4]
set_instance_assignment -name OUTPUT_PIN_LOAD 20 -to LED[5]
set_instance_assignment -name OUTPUT_PIN_LOAD 20 -to LED[6]
set_instance_assignment -name OUTPUT_PIN_LOAD 20 -to LED[7]
