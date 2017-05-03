-makelib ies/xil_defaultlib -sv \
  "D:/CAD/Xilinx/SDx/2016.3/Vivado/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "D:/CAD/Xilinx/SDx/2016.3/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies/xpm \
  "D:/CAD/Xilinx/SDx/2016.3/Vivado/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies/fifo_generator_v13_1_2 \
  "../../../ipstatic/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib ies/fifo_generator_v13_1_2 \
  "../../../ipstatic/hdl/fifo_generator_v13_1_rfs.vhd" \
-endlib
-makelib ies/fifo_generator_v13_1_2 \
  "../../../ipstatic/hdl/fifo_generator_v13_1_rfs.v" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../ip/fifo_512x8/sim/fifo_512x8.v" \
-endlib
-makelib ies/xil_defaultlib \
  glbl.v
-endlib

