//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.3_sdx (win64) Build 1721784 Tue Nov 29 22:12:44 MST 2016
//Date        : Sat Apr 01 12:01:38 2017
//Host        : HPC-CUDA running 64-bit Service Pack 1  (build 7601)
//Command     : generate_target slon_b.bd
//Design      : slon_b
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "slon_b,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=slon_b,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=1,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "slon_b.hwdef" *) 
module slon_b
   (clk_in,
    cnt_out);
  input clk_in;
  output [3:0]cnt_out;

  wire clk_in_1;
  wire [3:0]slon_bh_Dout;

  assign clk_in_1 = clk_in;
  assign cnt_out[3:0] = slon_bh_Dout;
  slon_bh_imp_113JCCN slon_bh
       (.CLK(clk_in_1),
        .Dout(slon_bh_Dout));
endmodule

module slon_bh_imp_113JCCN
   (CLK,
    Dout);
  input CLK;
  output [3:0]Dout;

  wire CLK_1;
  wire [23:0]c_counter_binary_0_Q;
  wire [3:0]xlslice_0_Dout;

  assign CLK_1 = CLK;
  assign Dout[3:0] = xlslice_0_Dout;
  slon_b_c_counter_binary_0_0 c_counter_binary_0
       (.CLK(CLK_1),
        .Q(c_counter_binary_0_Q));
  slon_b_xlslice_0_0 xlslice_0
       (.Din(c_counter_binary_0_Q),
        .Dout(xlslice_0_Dout));
endmodule
