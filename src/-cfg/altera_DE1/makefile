#--------------------------------------------------------------------------------------------------
#	project:       led_blink
#	cfg:           altera_DE1
#
#	description:   only for test project organisation and build scripts development
#--------------------------------------------------------------------------------------------------

#------------------------------------------------------------------------------
# REF_DIR    - can be ../../../.. or ../../.. (for top level src)
#------------------------------------------------------------------------------

PRJ_NAME := led_blink
REF_DIR  := ../../..
SRC_DIR  := ../..

#------------------------------------------------------------------------------
INC := $(SRC_DIR)/led_blink.svh \
       $(SRC_DIR)/prescaler/prescaler.svh 

SRC := $(SRC_DIR)/led_blink.sv \
       $(SRC_DIR)/prescaler/prescaler.sv \
       $(SRC_DIR)/io_bus/io_bus.sv

SDC := led_blink-altera_DE1.sdc

DEV := "USB-Blaster"

#------------------------------------------------------------------------------
QUARTUS  := 12.1

include $(REF_DIR)/script/altera.mk
