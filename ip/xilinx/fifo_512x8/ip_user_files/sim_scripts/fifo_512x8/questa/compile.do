vlib work
vlib msim

vlib msim/xil_defaultlib
vlib msim/xpm
vlib msim/fifo_generator_v13_1_2

vmap xil_defaultlib msim/xil_defaultlib
vmap xpm msim/xpm
vmap fifo_generator_v13_1_2 msim/fifo_generator_v13_1_2

vlog -work xil_defaultlib -64 -sv \
"D:/CAD/Xilinx/SDx/2016.3/Vivado/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/CAD/Xilinx/SDx/2016.3/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"D:/CAD/Xilinx/SDx/2016.3/Vivado/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work fifo_generator_v13_1_2 -64 \
"../../../ipstatic/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_1_2 -64 -93 \
"../../../ipstatic/hdl/fifo_generator_v13_1_rfs.vhd" \

vlog -work fifo_generator_v13_1_2 -64 \
"../../../ipstatic/hdl/fifo_generator_v13_1_rfs.v" \

vlog -work xil_defaultlib -64 \
"../../../ip/fifo_512x8/sim/fifo_512x8.v" \

vlog -work xil_defaultlib "glbl.v"

