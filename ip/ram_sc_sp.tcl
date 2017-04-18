#--------------------------------------------------------------------------------------------------
#	description:   template for single-clock single-port BRAM ip-core generation
#--------------------------------------------------------------------------------------------------

create_ip -name blk_mem_gen -vendor xilinx.com -library ip -module_name $ipCoreName -dir $ipCoreOutDir

#---
set_property CONFIG.Memory_Type       Single_Port_RAM    [get_ips $ipCoreName]
set_property CONFIG.Algorithm         Minimum_Area       [get_ips $ipCoreName]
set_property CONFIG.Operating_Mode_A  WRITE_FIRST        [get_ips $ipCoreName]
set_property CONFIG.Pipeline_Stages   0                  [get_ips $ipCoreName]
set_property CONFIG.Port_A_Clock      100                [get_ips $ipCoreName]
set_property CONFIG.Reset_Type        SYNC               [get_ips $ipCoreName]
set_property CONFIG.Enable_A          Use_ENA_Pin        [get_ips $ipCoreName]

#---
ipConfig ${ipCoreName} ${ipCoreOutDir}

