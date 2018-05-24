#--------------------------------------------------------------------------------------------------
#	project:       tq1m
#	cfg:           altera_DE1
#
#	description:   based at Harry Zhurov tq1 sdc 'slon'
#--------------------------------------------------------------------------------------------------

#-------------------------------------------------------------------------------
set_global_assignment -name TOP_LEVEL_ENTITY          $PRJ_NAME

#-------------------------------------------------------------------------------
set_global_assignment -name FAMILY                    "Cyclone II"
set_global_assignment -name DEVICE                    EP2C20F484C7
set_global_assignment -name DEVICE_FILTER_SPEED_GRADE 7
set_global_assignment -name DEVICE_FILTER_PACKAGE     FBGA
set_global_assignment -name DEVICE_FILTER_PIN_COUNT   484
#set DEVICE_CORE_VOLTAGE 1.2V              

#-------------------------------------------------------------------------------
set_global_assignment -name MIN_CORE_JUNCTION_TEMP 0
set_global_assignment -name MAX_CORE_JUNCTION_TEMP 85
set_global_assignment -name POWER_PRESET_COOLING_SOLUTION "NO HEAT SINK WITH STILL AIR"
set_global_assignment -name POWER_BOARD_THERMAL_MODEL "NONE (CONSERVATIVE)"
set_global_assignment -name NUM_PARALLEL_PROCESSORS 4
set_global_assignment -name RESERVE_ALL_UNUSED_PINS "AS INPUT TRI-STATED"

#-------------------------------------------------------------------------------
set_global_assignment -name VERILOG_INPUT_VERSION SYSTEMVERILOG_2005
