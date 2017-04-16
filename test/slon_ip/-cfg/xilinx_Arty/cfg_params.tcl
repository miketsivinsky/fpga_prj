#--------------------------------------------------------------------------------------------------
#	project:       slon_ip
#	cfg:           xilinx_Arty
#
#	description:   test and study xilinx ip workflow
#--------------------------------------------------------------------------------------------------

#-----------------------------------
set USE_PLL 0
set USE_RAM 0

set CLK_FACTOR   200_000_000
set DOUT_WIDTH             8
set ADDR_WIDTH             4

#-----------------------------------
puts $prjDefFile [format "`define CLK_FACTOR %s" $CLK_FACTOR];
puts $prjDefFile [format "`define DOUT_WIDTH %s" $DOUT_WIDTH];
puts $prjDefFile [format "`define ADDR_WIDTH %s" $ADDR_WIDTH];

#-----------------------------------
if {$USE_PLL == 1} {
	puts $prjDefFile [format "`define USE_PLL"];
}

if {$USE_RAM == 1} {
	puts $prjDefFile [format "`define USE_RAM"];
}





