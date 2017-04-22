#--------------------------------------------------------------------------------------------------
#	project:       slon_ip
#	ip core:       ram_16x8 - single-clock single-port block RAM
#
#	description:   test and study xilinx ip workflow
#--------------------------------------------------------------------------------------------------

#--------------------------------------------------------------------------------------------------
proc ipConfig { ipCoreName ipCoreOutDir } {

	#puts "slon: $ipCoreName $ipCoreOutDir"
	set_property CONFIG.Write_Depth_A  16      [get_ips $ipCoreName]
	set_property CONFIG.Write_Width_A   8      [get_ips $ipCoreName]
	set_property CONFIG.Read_Width_A    8      [get_ips $ipCoreName]
	#set_property CONFIG.Load_Init_File true    [get_ips $ipCoreName]
	#set_property CONFIG.Coe_File ram_16x8.coe  [get_ips $ipCoreName]
	#set_property CONFIG.Coe_File {D:/Mike/themes/FPGA/work/ip_lib/ram_16x8/ram_16x8.coe} [get_ips $ipCoreName]
	report_property [get_ips $ipCoreName]
}

#--------------------------------------------------------------------------------------------------
source ${IP_LIB_DIR}/ram_sc_sp.tcl
