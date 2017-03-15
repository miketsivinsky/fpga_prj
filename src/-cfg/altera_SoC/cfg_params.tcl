#--------------------------------------------------------------------------------------------------
#      project:       led_blink
#      cfg:           altera_SoC
#
#      description:   only for test project organisation and build scripts development
#--------------------------------------------------------------------------------------------------

#-----------------------------------
set PRESCALER_OFFSET     4
set OUT_BUS_WIDTH        4

#-----------------------------------
puts $prjDefFile [format "`define USE_OUT_REGS"];

puts $prjDefFile [format "`define PRESCALER_OFFSET %d" $PRESCALER_OFFSET];
puts $prjDefFile [format "`define PRESCALER_WIDTH  %d" $OUT_BUS_WIDTH];
puts $prjDefFile [format "`define OUT_BUS_WIDTH    %d" $OUT_BUS_WIDTH];




