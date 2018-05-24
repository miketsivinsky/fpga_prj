#--------------------------------------------------------------------------------------------------
#	project:       led_blink
#	cfg:           altera_DE1
#
#	description:   only for test project organisation and build scripts development
#--------------------------------------------------------------------------------------------------

#--------------------------------------------------------------------------------------------------
#    clock 
#--------------------------------------------------------------------------------------------------
set_location_assignment PIN_L1 -to clk

#--------------------------------------------------------------------------------------------------
#    LED
#--------------------------------------------------------------------------------------------------
set_location_assignment PIN_U22 -to LED[0]
set_location_assignment PIN_U21 -to LED[1]
set_location_assignment PIN_V22 -to LED[2]
set_location_assignment PIN_V21 -to LED[3]
set_location_assignment PIN_W22 -to LED[4]
set_location_assignment PIN_W21 -to LED[5]
set_location_assignment PIN_Y22 -to LED[6]
set_location_assignment PIN_Y21 -to LED[7]
