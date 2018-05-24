#--------------------------------------------------------------------------------------------------
#	project:       slon_ip
#	ip core:       fifo_1024x8 - single-clock FIFO
#
#	description:   test and study xilinx ip workflow
#--------------------------------------------------------------------------------------------------

#--------------------------------------------------------------------------------------------------
source ${IP_LIB_DIR}/fifo_sc.tcl

#--------------------------------------------------------------------------------------------------
proc ipInfo {} {
	return [dict create isSynth 1 isIp 1 isPacked 0]
}

#--------------------------------------------------------------------------------------------------
proc ipUserCfg { ipCoreName ipCoreOutDir cfgDir } {
	puts "\[ipUserCfg\] $ipCoreName $ipCoreOutDir"
	
	set ipParams {
			CONFIG.Input_Data_Width 8
			CONFIG.Input_Depth      1024
		     }
	set_property -dict [subst $ipParams] [get_ips $ipCoreName]
	#report_property [get_ips $ipCoreName]
}
