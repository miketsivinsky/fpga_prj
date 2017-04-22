#--------------------------------------------------------------------------------------------------
#	description:   template for single-clock single-port BRAM ip-core generation
#--------------------------------------------------------------------------------------------------

#--------------------------------------------------------------------------------------------------
proc ipCfgPrologue { ipCoreName ipCoreOutDir } {
	#puts "\[ipCfgPrologue\] $ipCoreName $ipCoreOutDir"
	create_ip -name blk_mem_gen -vendor xilinx.com -library ip -module_name $ipCoreName -dir $ipCoreOutDir

	#---
	#set_property -dict [list CONFIG.Load_Init_File {true}CONFIG.Coe_File {D:/Mike/themes/FPGA/work/ip_lib/ram_16x8/ram_16x8.coe}] [get_ips $ipCoreName]
	#set_property -dict [list CONFIG.Write_Width_A {8} CONFIG.Load_Init_File {true} CONFIG.Coe_File {D:/Mike/themes/FPGA/work/ip_lib/ram_16x8/ram_16x8.coe} CONFIG.Read_Width_A {8} CONFIG.Write_Width_B {8} CONFIG.Read_Width_B {8}] [get_ips ram_16x8]

	set_property CONFIG.Memory_Type       Single_Port_RAM    [get_ips $ipCoreName]
	set_property CONFIG.Algorithm         Minimum_Area       [get_ips $ipCoreName]
	set_property CONFIG.Operating_Mode_A  WRITE_FIRST        [get_ips $ipCoreName]
	set_property CONFIG.Pipeline_Stages   0                  [get_ips $ipCoreName]
	#set_property CONFIG.Port_A_Clock      100                [get_ips $ipCoreName]
	set_property CONFIG.Reset_Type        SYNC               [get_ips $ipCoreName]
	set_property CONFIG.Enable_A          Use_ENA_Pin        [get_ips $ipCoreName]
}

#--------------------------------------------------------------------------------------------------
proc ipCfgEpilogue { ipCoreName ipCoreOutDir } {
	puts "\[ipCfgEpilogue\] $ipCoreName $ipCoreOutDir"
}



