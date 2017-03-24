#--------------------------------------------------------------------------------------------------
#	project:       tq1m
#	cfg:           altera_SoC
#
#	description:   based at Harry Zhurov tq1 sdc 'slon'
#--------------------------------------------------------------------------------------------------

#-----------------------------------
set DAC_CLK_FACTOR   50_000_000
set DOUT_WIDTH                4

#-----------------------------------
puts $prjDefFile [format "`define DAC_CLK_FACTOR %s" $DAC_CLK_FACTOR];
puts $prjDefFile [format "`define DOUT_WIDTH     %s" $DOUT_WIDTH];





