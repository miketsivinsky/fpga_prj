#--------------------------------------------------------------------------------------------------
#	project:       led_blink
#	cfg:           altera_DE1
#
#	description:   only for test project organisation and build scripts development
#--------------------------------------------------------------------------------------------------

create_clock -period 20 [get_ports clk]
derive_pll_clocks
derive_clock_uncertainty
