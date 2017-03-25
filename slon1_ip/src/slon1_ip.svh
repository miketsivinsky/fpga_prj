//--------------------------------------------------------------------------------------------------
//      project:       slon1_ip
//	module:        slon1_ip
//
//	description:   test and study xilinx ip workflow
//--------------------------------------------------------------------------------------------------

`ifndef SLON1_IP_SVH
`define SLON1_IP_SVH

// synopsys translate_off
`define SIMULATOR
// synopsys translate_on

//---
`define PRJ_NAME_SLON1_IP
`define CFG_NAME_XILINX_ARTY
`define BUILD_TOOL_VIVADO

//---
`define NOT_USE_PLL
`define DAC_CLK_FACTOR 50_000_000
`define DOUT_WIDTH     4

`endif // SLON1_IP_SVH

