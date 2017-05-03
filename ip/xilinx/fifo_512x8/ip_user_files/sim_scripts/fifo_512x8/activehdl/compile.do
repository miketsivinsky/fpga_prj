vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/fifo_generator_v13_1_2

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap fifo_generator_v13_1_2 activehdl/fifo_generator_v13_1_2

vlog -work xil_defaultlib  -sv2k12 \
"D:/CAD/Xilinx/SDx/2016.3/Vivado/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/CAD/Xilinx/SDx/2016.3/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/CAD/Xilinx/SDx/2016.3/Vivado/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work fifo_generator_v13_1_2  -v2k5 \
"../../../ipstatic/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_1_2 -93 \
"../../../ipstatic/hdl/fifo_generator_v13_1_rfs.vhd" \

vlog -work fifo_generator_v13_1_2  -v2k5 \
"../../../ipstatic/hdl/fifo_generator_v13_1_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../ip/fifo_512x8/sim/fifo_512x8.v" \

vlog -work xil_defaultlib "glbl.v"

