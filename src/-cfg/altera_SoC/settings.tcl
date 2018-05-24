#--------------------------------------------------------------------------------------------------
#	project:       led_blink
#	cfg:           altera_SoC
#
#	description:   only for test project organisation and build scripts development
#--------------------------------------------------------------------------------------------------

#-------------------------------------------------------------------------------
set_global_assignment -name TOP_LEVEL_ENTITY          $PRJ_NAME

#-------------------------------------------------------------------------------
#set_global_assignment -name SEARCH_PATH  ${SRC_DIR}/io_bus
#set_global_assignment -name SEARCH_PATH  ${SRC_DIR}/prescaler

#-------------------------------------------------------------------------------
set_global_assignment -name FAMILY                    "Cyclone V"
set_global_assignment -name DEVICE                    5CSXFC6D6F31C8ES
set_global_assignment -name DEVICE_FILTER_SPEED_GRADE 8_H6
set_global_assignment -name DEVICE_FILTER_PACKAGE     FBGA
set_global_assignment -name DEVICE_FILTER_PIN_COUNT   896
#set DEVICE_CORE_VOLTAGE 1.2V              

#-------------------------------------------------------------------------------
set_global_assignment -name MIN_CORE_JUNCTION_TEMP 0
set_global_assignment -name MAX_CORE_JUNCTION_TEMP 85
set_global_assignment -name POWER_PRESET_COOLING_SOLUTION "NO HEAT SINK WITH STILL AIR"
set_global_assignment -name POWER_BOARD_THERMAL_MODEL "NONE (CONSERVATIVE)"
set_global_assignment -name NUM_PARALLEL_PROCESSORS 4

#-------------------------------------------------------------------------------
set_global_assignment -name VERILOG_INPUT_VERSION SYSTEMVERILOG_2005
