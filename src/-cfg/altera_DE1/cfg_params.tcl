#--------------------------------------------------------------------------------------------------
#      project:       led_blink
#      cfg:           altera_DE1
#
#      description:   only for test project organisation and build scripts development
#--------------------------------------------------------------------------------------------------

#-----------------------------------
set PRESCALER_OFFSET     0
set OUT_BUS_WIDTH        8

#-----------------------------------
puts $prjDefFile [format "`define USE_OUT_REGS"];

puts $prjDefFile [format "`define PRESCALER_OFFSET %d" $PRESCALER_OFFSET];
puts $prjDefFile [format "`define PRESCALER_WIDTH  %d" $OUT_BUS_WIDTH];
puts $prjDefFile [format "`define OUT_BUS_WIDTH    %d" $OUT_BUS_WIDTH];




