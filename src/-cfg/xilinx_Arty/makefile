#--------------------------------------------------------------------------------------------------
#	project:       led_blink
#	cfg:           xilinx_Arty
#
#	description:   only for test project organisation and build scripts development
#--------------------------------------------------------------------------------------------------

#------------------------------------------------------------------------------
# REF_DIR    - can be ../../../.. or ../../.. (for top level src)
#------------------------------------------------------------------------------

DEVICE   := xc7a35ticsg324-1L
PRJ_NAME := led_blink
REF_DIR  := ../../..
SRC_DIR  := ../..

#------------------------------------------------------------------------------
INC := $(SRC_DIR)/led_blink.svh \
       $(SRC_DIR)/prescaler/prescaler.svh 

SRC := $(SRC_DIR)/led_blink.sv \
       $(SRC_DIR)/prescaler/prescaler.sv \
       $(SRC_DIR)/io_buf/io_buf.sv

SDC := led_blink-xilinx_Arty.sdc \
       led_blink-xilinx_Arty.xdc

TRG_BOARD  := "Digilent/210319A28CB4A"
TRG_DEVICE := "xc7a35t_0"

#------------------------------------------------------------------------------

include $(REF_DIR)/script/xilinx.mk
