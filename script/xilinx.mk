#------------------------------------------------------------------------------
#------------------------------------------------------------------------------
CFG_NAME        := $(notdir $(CURDIR))
SCRIPT_DIR      := $(REF_DIR)/script
BIN_DIR         := $(REF_DIR)/bin

OUT_DIR         := $(SRC_DIR)/-out
OUT_CFG_DIR     := $(OUT_DIR)/$(CFG_NAME)

#------------------------------------------------------------------------------
#------------------------------------------------------------------------------
PRJ_GEN_SCRIPT := xilinx_prj_gen.tcl
OUT_GEN_SCRIPT := xilinx_prj_build.tcl
DEV_PGM_SCRIPT := xilinx_dev_pgm.tcl

#------------------------------------------------------------------------------
SHELL_DIR          := D:/CAD/Xilinx/SDx/2016.3/Vivado/bin







#------------------------------------------------------------------------------
PRJ_SHELL  := vivado
PGM_SHELL  := vivado

#------------------------------------------------------------------------------
ifeq ($(OS),Windows_NT)
 fixPath = $(subst /,\,$1)
else
 fixPath = $1
endif

#------------------------------------------------------------------------------
SRC_DIR     := $(abspath $(SRC_DIR))
OUT_DIR     := $(call fixPath, $(OUT_DIR))
OUT_CFG_DIR := $(call fixPath, $(OUT_CFG_DIR))
BIN_DIR     := $(call fixPath, $(abspath $(BIN_DIR)))
SCRIPT_DIR  := $(call fixPath, $(abspath $(SCRIPT_DIR)))

#------------------------------------------------------------------------------
PRJ_FILE_CMD_LINE := -mode batch -journal $(OUT_CFG_DIR)/$(PRJ_NAME)-prj.jou -log $(OUT_CFG_DIR)/$(PRJ_NAME)-prj.log -source $(SCRIPT_DIR)/$(PRJ_GEN_SCRIPT) -notrace
OUT_FILE_CMD_LINE := -mode batch -journal $(OUT_CFG_DIR)/$(PRJ_NAME)-out.jou -log $(OUT_CFG_DIR)/$(PRJ_NAME)-out.log -source $(SCRIPT_DIR)/$(OUT_GEN_SCRIPT) -notrace
DEV_PGM_CMD_LINE  := -mode batch -journal $(OUT_CFG_DIR)/$(PRJ_NAME)-pgm.jou -log $(OUT_CFG_DIR)/$(PRJ_NAME)-pgm.log -source $(SCRIPT_DIR)/$(DEV_PGM_SCRIPT) -notrace

#------------------------------------------------------------------------------
ifndef PRJ_NAME
	PRJ_NAME := $(notdir $(SRC_DIR))
endif

#------------------------------------------------------------------------------
PRJ_FILE_NAME    := $(PRJ_NAME)-$(CFG_NAME)
OUT_FILE_NAME    := $(PRJ_NAME)
TARGET_FILE_NAME := $(PRJ_NAME)-$(CFG_NAME)


#------------------------------------------------------------------------------
INC            := $(abspath $(INC)) 
SRC            := $(abspath $(SRC)) 

SRC_DEPS       := $(call fixPath, $(SRC)) $(call fixPath, $(INC)) $(call fixPath, $(SDC))
PRJ_FILE       := $(call fixPath, $(abspath $(OUT_CFG_DIR)/$(PRJ_FILE_NAME).xpr)) 
OUT_FILE       := $(call fixPath, $(abspath $(OUT_CFG_DIR)/$(PRJ_NAME)-$(CFG_NAME).runs/impl_1/$(OUT_FILE_NAME).bit))
TRG_FILE       := $(call fixPath, $(abspath $(BIN_DIR)/$(TARGET_FILE_NAME).bit))

CMD_DEPS     := $(SCRIPT_DIR)/xilinx.mk makefile
CMD_DEPS_PRJ := $(SCRIPT_DIR)/xilinx_prj_gen.tcl settings.tcl
CMD_DEPS_BLD := $(SCRIPT_DIR)/xilinx_prj_build.tcl
CMD_DEPS_PRG := $(SCRIPT_DIR)/xilinx_dev_pgm.tcl

ifneq ($(wildcard cfg_params.tcl),)
 CMD_DEPS_PRJ := $(CMD_DEPS_PRJ) cfg_params.tcl
endif

#------------------------------------------------------------------------------
.PHONY: all dev_pgm build_prj create_prj clean clean_all print-% test

all:    build_prj

dev_pgm: $(TRG_FILE) $(CMD_DEPS_PRG)
	@if exist $(OUT_CFG_DIR)\$(PRJ_NAME)-pgm* del /Q/ F $(OUT_CFG_DIR)\$(PRJ_NAME)-pgm*
	$(SHELL_DIR)/$(PGM_SHELL) $(DEV_PGM_CMD_LINE) -tclargs $(TRG_BOARD) $(TRG_DEVICE) $(TRG_FILE)
	@if exist .Xil rmdir /s/q .Xil

build_prj:  $(TRG_FILE)

create_prj: $(PRJ_FILE)

clean:
	@if exist $(OUT_CFG_DIR) rmdir /s/q $(OUT_CFG_DIR)	
	@if exist $(TRG_FILE) del /F /Q $(TRG_FILE)

clean_all:
	@if exist $(OUT_DIR) rmdir /s/q $(OUT_DIR)	
	@if exist $(BIN_DIR) rmdir /s/q $(BIN_DIR)	
	       
print-%:
	@echo $* = $($*)

test:
	@echo test $(TARGET_FILE_NAME)	

#------------------------------------------------------------------------------
$(TRG_FILE): $(OUT_FILE)
	@if not exist $(BIN_DIR) mkdir $(BIN_DIR)	
	@if exist $(TRG_FILE) del /Q/ F $(TRG_FILE)	
	@copy $(OUT_FILE) $(TRG_FILE) > nul
	@if exist .Xil rmdir /s/q .Xil

$(OUT_FILE): $(PRJ_FILE) $(CMD_DEPS) $(CMD_DEPS_BLD) $(CMD_DEPS_PRJ)
	@if exist $(OUT_CFG_DIR)\$(PRJ_NAME)-out* del /Q/ F $(OUT_CFG_DIR)\$(PRJ_NAME)-out*
	$(SHELL_DIR)/$(PRJ_SHELL) $(OUT_FILE_CMD_LINE) -tclargs $(OUT_CFG_DIR) $(PRJ_FILE_NAME)

$(PRJ_FILE): $(SRC_DEPS) $(CMD_DEPS) $(CMD_DEPS_PRJ)
	@if not exist $(OUT_DIR) mkdir $(OUT_DIR)	
	@if exist $(OUT_CFG_DIR) rmdir /s/q $(OUT_CFG_DIR)	
	mkdir $(OUT_CFG_DIR)
	$(SHELL_DIR)/$(PRJ_SHELL) $(PRJ_FILE_CMD_LINE) -tclargs $(SCRIPT_DIR) $(SRC_DIR) $(OUT_CFG_DIR) $(PRJ_NAME) $(TARGET_FILE_NAME) $(SRC) $(SDC)
