// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.3_sdx (win64) Build 1721784 Tue Nov 29 22:12:44 MST 2016
// Date        : Fri Mar 31 19:54:52 2017
// Host        : HPC-CUDA running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim -rename_top slon_b_c_counter_binary_0_0 -prefix
//               slon_b_c_counter_binary_0_0_ slon_b_c_counter_binary_0_0_sim_netlist.v
// Design      : slon_b_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "slon_b_c_counter_binary_0_0,c_counter_binary_v12_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_10,Vivado 2016.3_sdx" *) 
(* NotValidForBitStream *)
module slon_b_c_counter_binary_0_0
   (CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) output [23:0]Q;

  wire CLK;
  wire [23:0]Q;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "24" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  slon_b_c_counter_binary_0_0_c_counter_binary_v12_0_10 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "24" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module slon_b_c_counter_binary_0_0_c_counter_binary_v12_0_10
   (CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    UP,
    LOAD,
    L,
    THRESH0,
    Q);
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  input UP;
  input LOAD;
  input [23:0]L;
  output THRESH0;
  output [23:0]Q;

  wire \<const1> ;
  wire CLK;
  wire [23:0]Q;
  wire NLW_i_synth_THRESH0_UNCONNECTED;

  assign THRESH0 = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "24" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  slon_b_c_counter_binary_0_0_c_counter_binary_v12_0_10_viv i_synth
       (.CE(1'b0),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_i_synth_THRESH0_UNCONNECTED),
        .UP(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
U60gt/ZyRb3KRYWUU5/M+Ey5bfot9pU3sZ31GnGFTpDYARFOjP74bpN9/i6JIy8gblVI200ImdMB
qbEB/qdNNQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
MGlYO/wsfPkFT+uZldjrP+N/MIdHLGtYmR17i2wpFGLX9dGYEfDgDJv0gg/6QjSoQKbJqXLksfPk
VN5ed+CVieUO7GP4jBYbvmlaM4qcQwdh6R+fRYmpSpYxtVo+OF3eoIvxk8tC2GLm6vEuqAghVp5S
66nX/A0QDxhu4Sb5kZQ=

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
OI02hka8fd5bCBtdgh3iGodlxAsMdaEHyBuf62AFdeNgSslnwcfE4+h7YV/7+f5q+sGa5twPSl6Y
6ceyjF9yw+hfri3qUD6scH9klpmlsDmFVd1Wz89J+CWlxRZ2b8kBp9VVJD1Q+V5HbA6onC9iCUO1
mofTbjgy295+spi8ww8=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
D3Q8Zx6fdgrOZ643DSqgu0ziGRnWDBfwrnIMNTQqd5Rr4tTVfcfEyz3pYd61QCEcldr8A+V5RzIk
l8CbVPUBA12AsKCgnB4tIoJgy4Vn+7LWJDQuPhk2YqL5DLwJvVbzWYvCnh/YVnPKOJqzxsAJlIvn
eiO7IpseltN0npnTpi9p8BfcG7dHGs7DR1ptrpui7uK6Jpxn7vc5eO/QqGs3SiXO5oWIiavTaD1C
2AD+oN3w0A67bLSBI7GGAErchrdP216lCMTqpWDhguotFInjxUPyglbxK2wZmifzg8d1PTNMhE+h
joX2dWqWkH4nltcPOD72mO5/BEUaF3805LxOjA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
noxsQ7Rr0JfSSiLZieCsX7SVzI1LXnO/9Jr2Pa2cNhPjCy+cabeI6RijLjhh1gw0NC7IVdgVv8yV
7z/b9YflPwzMwTsBs/lGb+2HSHUtZAgRdJ1tkrROGADLIVb/G4rLgvEJFuAdDfUZdjayUILfM4dB
skBJz5Rt1thMSHavE0c5vJ6UfhSGNyBlKsIKVmkfgoqtA5MEwrnUgfs8CZzpHx57u1keeAwINHWA
FmflZsNNg3GT8GLEmjmDVMk19VLHOk1ANcTbngE4jT2+jOZeXbwLV480OybvMLPTKo85L87d8sLF
KE92k9/izwsFNYLkkSAxcY52pCycqFIxU1n/WQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinx_2016_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
iMuZMDjk7+maZX8N8Yi4SS+47sSBWmMjkfuaHzGi1QNJcyr7OiCP91lOXdLF6CiNNYWwug8+7VXF
JWVufqMLaLUb5m4ZOfvRPDnJev0xT5CwkZ9C60mB0KEi2HYV59ZzCVLHgezmAmziW96KZxe5OIDY
NTSErkkm63/8mK7zkQKzeX51nGSyABxVEJimSeRtJn5swdBudB3uwU7vjYLeEE+U73DCymKSsoz0
2D8+kzFnJyVaE8YGMLYHVx+Tc9v+KP9sL1dBZYYxiIcq/eTNfOeJ7FsxDcOk/PZOVHwmqGSgJ9GN
aL55bYE/+PHbRTckh8OfHVwUrd7kweJsMdqXdQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
myxvxpjzNHF7sRg5tBalaIjCkst/3Nrs1OXWzDtYOf52K2VBv6/Wt2Xg7kf/g3Ken1ru/jJI1tFU
P8VIoM2AU24Thvmem5D5hQwih5Q4BIvvixJOcOxL0uBZzJmdt2U5VrRLls4iu/NP74hK9tHVj4uE
3qz4nNKiTb8MRLgJn+GuWzQgGID/he44EfhTAUS3CyVlCKPZ68BmtQ7pu4er7fry0xNFjCu2GyvH
FWSstn85WTWiuqbnbm6tZ1LSKl5ATwS22ypU/HfIc9XGJ/bo39PGcOogmrXI6kdwdyBcHtRKxz7e
/bIftZhFa0R+4bwuHxaImN3cDrgSX/JNpdNVjw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP05_001", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
yVAo2Jr4VW7T7fr/oq4N8XFojCyM2zScasrEJ/iOIysx/h9rh6Ethe8Dy0V0z30hrHFdgGpCO8Os
dO1ckTpBDq7ai41by0qmVsQxv74ikHss0FTtHx3kDk9QkS5RZ5/hNJ1/IMFxGePnT72bsdKjpGng
zBjKf4JUNJYI3wMEfj3JLZqWVPfvvpa9hl3afVKA54ZnjzQ4cmXwrMismmxJ/OC3/OOATwqh3CR/
4qOpc89bHhV14kTbZspHqk+RDgqzFaXDau+SR7QNCk4a6MhBjyWEyXNWlKRmt9PQ1rh8xYtYNB2i
Z+Tc26oRGzeC1XVIVK7dRoV8myWUrFCyFR1vXw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 13600)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
