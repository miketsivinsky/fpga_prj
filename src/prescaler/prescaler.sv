//--------------------------------------------------------------------------------------------------
//	module:        prescaler_m
//
//	description:   only for test project organisation and build scripts development
//--------------------------------------------------------------------------------------------------

`include "prescaler.svh"

`ifndef PRESCALER_WIDTH
	`define PRESCALER_WIDTH 4
`endif
`ifndef PRESCALER_OFFSET
	`define PRESCALER_OFFSET 0
`endif

//******************************************************************************
//******************************************************************************
module prescaler_m  import prescaler_lib::*;
(
    input  bit                       clk,
    
    output bit [`PRESCALER_WIDTH-1:0] out
);

//------------------------------------------------------------------------------
localparam integer COUNTER_WIDTH = MAX_COUNTER_WIDTH - `PRESCALER_OFFSET;

//------------------------------------------------------------------------------
typedef bit [COUNTER_WIDTH-1:0] Counter_t;

Counter_t counter;


//------------------------------------------------------------------------------
//     Logic
//

//----
initial begin
	counter  = '0;
end

//----
always_ff @(posedge clk) begin
	`ifdef QUARTUS
		counter  <= counter + Counter_t'(1);	
	`else
		counter  <= counter + 1;
	`endif
end

//----
//assign out = counter[(COUNTER_WIDTH-`PRESCALER_OFFSET-1)-:`PRESCALER_WIDTH];
assign out = counter[(COUNTER_WIDTH-1)-:`PRESCALER_WIDTH];

endmodule : prescaler_m