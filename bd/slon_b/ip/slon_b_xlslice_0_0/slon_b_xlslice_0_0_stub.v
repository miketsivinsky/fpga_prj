// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.3_sdx (win64) Build 1721784 Tue Nov 29 22:12:44 MST 2016
// Date        : Fri Mar 31 19:54:49 2017
// Host        : HPC-CUDA running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub -rename_top slon_b_xlslice_0_0 -prefix
//               slon_b_xlslice_0_0_ slon_b_xlslice_0_0_stub.v
// Design      : slon_b_xlslice_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "xlslice,Vivado 2016.3_sdx" *)
module slon_b_xlslice_0_0(Din, Dout)
/* synthesis syn_black_box black_box_pad_pin="Din[23:0],Dout[3:0]" */;
  input [23:0]Din;
  output [3:0]Dout;
endmodule
