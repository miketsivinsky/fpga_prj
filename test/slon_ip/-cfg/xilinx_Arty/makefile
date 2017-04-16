#--------------------------------------------------------------------------------------------------
#	project:       slon_ip
#	cfg:           xilinx_Arty
#
#	description:   test and study xilinx ip workflow
#--------------------------------------------------------------------------------------------------

#------------------------------------------------------------------------------
# REF_DIR    - can be ../../../.. or ../../.. (for top level src)
#------------------------------------------------------------------------------

PRJ_NAME := slon_ip
REF_DIR  := ../../../..
SRC_DIR  := ../..
#IP_DIR   := $(REF_DIR)/ip

#------------------------------------------------------------------------------
INC := $(SRC_DIR)/slon_ip.svh

SRC := $(SRC_DIR)/slon_ip.sv

SDC := slon_ip-xilinx_Arty.sdc \
       slon_ip-xilinx_Arty.xdc

CFG_IP := ram_16x8 fifo_16x8 $(SRC_DIR)/fifo_16x4

TRG_BOARD  := "Digilent/210319A28CB4A"
TRG_DEVICE := "xc7a35t_0"

#------------------------------------------------------------------------------

include $(REF_DIR)/script/xilinx.mk
