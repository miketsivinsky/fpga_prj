#--------------------------------------------------------------------------------------------------
#	project:       slon_ip
#	ip core:       pll - pll
#
#	description:   test and study xilinx ip workflow
#--------------------------------------------------------------------------------------------------

#--------------------------------------------------------------------------------------------------
source ${IP_LIB_DIR}/pll.tcl

#--------------------------------------------------------------------------------------------------
proc ipInfo {} {
	return [dict create isSynth 1 isIp 1 isPacked 0]
}

#--------------------------------------------------------------------------------------------------
proc ipUserCfg { ipCoreName ipCoreOutDir cfgDir } {
	#puts "\[ipUserCfg\] $ipCoreName $ipCoreOutDir"
	
	set ipParams {
			CONFIG.CLKOUT1_REQUESTED_OUT_FREQ  200	
			CONFIG.USE_LOCKED                  false
			CONFIG.USE_RESET                   false
			CONFIG.MMCM_COMPENSATION           ZHOLD
		     }
	set_property -dict [subst $ipParams] [get_ips $ipCoreName]
	#report_property [get_ips $ipCoreName]
}


