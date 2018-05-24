#--------------------------------------------------------------------------------------------------
#	project:       tq1m
#	cfg:           altera_DE1
#
#	description:   based at Harry Zhurov tq1 sdc 'slon'
#--------------------------------------------------------------------------------------------------

create_clock -period 20 [get_ports ref_clk]
derive_pll_clocks
derive_clock_uncertainty
