//--------------------------------------------------------------------------------------------------
//      project:       led_blink
//	module:        led_blink
//
//	description:   only for test project organisation and build scripts development
//--------------------------------------------------------------------------------------------------

`include "led_blink.svh"

//******************************************************************************
//******************************************************************************
module led_blink
(
    input  bit                      clk,
    
    output bit [`OUT_BUS_WIDTH-1:0] LED
);

//------------------------------------------------------------------------------

//---
bit [`OUT_BUS_WIDTH-1:0] prescaler_out;

//---
prescaler_m prescaler
(
	.clk    (clk),
        .out    (prescaler_out)
);

//---
io_buf_m io_buf
(
    `ifdef USE_OUT_REGS
    	.clk	(clk),
    `endif
	.in     (prescaler_out),
	.out    (LED)		
);

endmodule : led_blink