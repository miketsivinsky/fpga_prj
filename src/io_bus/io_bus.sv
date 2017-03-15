//--------------------------------------------------------------------------------------------------
//	module:        io_bus_m
//
//	description:   only for test project organisation and build scripts development
//--------------------------------------------------------------------------------------------------

`include "cfg_params_generated.svh"

`ifndef OUT_BUS_WIDTH
	`define OUT_BUS_WIDTH 4
`endif


//******************************************************************************
//******************************************************************************
module io_buf_m
(
    `ifdef USE_OUT_REGS
    	input  bit       clk,
    `endif
    
    input  bit [`OUT_BUS_WIDTH-1:0] in,
    output bit [`OUT_BUS_WIDTH-1:0] out
);


//------------------------------------------------------------------------------
`ifdef USE_OUT_REGS
	bit [`OUT_BUS_WIDTH-1:0] out_reg;
`endif

//------------------------------------------------------------------------------
//     Logic
//

//----
`ifdef USE_OUT_REGS
	//---
	initial begin
		out_reg = '0;	
	end

	//---
	always_ff @(posedge clk) begin
		out_reg <= in;
	end

	//---
	assign out = out_reg;
`else
	assign out = in;
`endif

endmodule : io_buf_m