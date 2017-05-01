#--------------------------------------------------------------------------------------------------
#	project:       slon_ip
#	ip core:       ram_16x8 - single-clock single-port block RAM
#
#	description:   test and study xilinx ip workflow
#--------------------------------------------------------------------------------------------------

#--------------------------------------------------------------------------------------------------
source ${IP_LIB_DIR}/ram_sc_sp.tcl

#--------------------------------------------------------------------------------------------------
proc ipInfo {} {
	return [dict create isSynth 1 isIp 1 isPacked 1]
}

#--------------------------------------------------------------------------------------------------
proc ipUserCfg { ipCoreName ipCoreOutDir cfgDir } {
	#puts "\[ipUserCfg\] $ipCoreName $ipCoreOutDir"
	
	set ipParams {
			CONFIG.Write_Depth_A  16	
			CONFIG.Write_Width_A   8
			CONFIG.Read_Width_A    8
                        CONFIG.Load_Init_File  {true}
			CONFIG.Coe_File        ${cfgDir}/ram_16x8.coe
		     }
	set_property -dict [subst $ipParams] [get_ips $ipCoreName]
	report_property [get_ips $ipCoreName]
}


