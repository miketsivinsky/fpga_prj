#--------------------------------------------------------------------------------------------------
#	project:       tq1m
#	cfg:           altera_SoC
#
#	description:   based at Harry Zhurov tq1 sdc 'slon'
#--------------------------------------------------------------------------------------------------

#------------------------------------------------------------------------------
# REF_DIR    - can be ../../../.. or ../../.. (for top level src)
#------------------------------------------------------------------------------

PRJ_NAME := tq1m
REF_DIR  := ../../../../..
SRC_DIR  := ../..
IP_DIR   := $(REF_DIR)/ip

#------------------------------------------------------------------------------
INC := $(SRC_DIR)/tq1m.svh

SRC := $(SRC_DIR)/tq1m.sv

IP  := $(IP_DIR)/clkctrl_SoC.qsys \
       $(IP_DIR)/pll_SoC/pll_SoC.qip

SDC := tq1m-altera_SoC.sdc

DEV := "CV SoCKit"

#------------------------------------------------------------------------------
QUARTUS  := 16.1

include $(REF_DIR)/script/altera.mk
