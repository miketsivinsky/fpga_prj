//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.3_sdx (win64) Build 1721784 Tue Nov 29 22:12:44 MST 2016
//Date        : Sat Apr 01 12:01:38 2017
//Host        : HPC-CUDA running 64-bit Service Pack 1  (build 7601)
//Command     : generate_target slon_b_wrapper.bd
//Design      : slon_b_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module slon_b_wrapper
   (clk_in,
    cnt_out);
  input clk_in;
  output [3:0]cnt_out;

  wire clk_in;
  wire [3:0]cnt_out;

  slon_b slon_b_i
       (.clk_in(clk_in),
        .cnt_out(cnt_out));
endmodule
