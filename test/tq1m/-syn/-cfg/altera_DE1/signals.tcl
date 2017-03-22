#--------------------------------------------------------------------------------------------------
#	project:       tq1m
#	cfg:           altera_DE1
#
#	description:   based at Harry Zhurov tq1 sdc 'slon'
#--------------------------------------------------------------------------------------------------

#--------------------------------------------------------------------------------------------------
#    ref_clk
#--------------------------------------------------------------------------------------------------
set_location_assignment PIN_L1 -to ref_clk

#--------------------------------------------------------------------------------------------------
#    dac_clk
#--------------------------------------------------------------------------------------------------
set_location_assignment PIN_R20 -to dac_clk

#--------------------------------------------------------------------------------------------------
#    dout
#--------------------------------------------------------------------------------------------------
set_location_assignment PIN_U22 -to dout[0]
set_location_assignment PIN_U21 -to dout[1]
set_location_assignment PIN_V22 -to dout[2]
set_location_assignment PIN_V21 -to dout[3]
set_location_assignment PIN_W22 -to dout[4]
set_location_assignment PIN_W21 -to dout[5]
set_location_assignment PIN_Y22 -to dout[6]
set_location_assignment PIN_Y21 -to dout[7]
