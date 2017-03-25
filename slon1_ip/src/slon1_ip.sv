//--------------------------------------------------------------------------------------------------
//      project:       slon1_ip
//	module:        slon1_ip
//
//	description:   test and study xilinx ip workflow
//--------------------------------------------------------------------------------------------------

`include "slon1_ip.svh"

//******************************************************************************
//******************************************************************************
module slon1_ip
(
    input  bit                   ref_clk,
                                 
    output bit                   dac_clk,
    output bit [`DOUT_WIDTH-1:0] dout
);

//-----------------------------------------------------------------------------
typedef bit [$clog2(`DAC_CLK_FACTOR)-1:0] Counter_t;

//-----------------------------------------------------------------------------
Counter_t counter;
bit       clk;

//------------------------------------------------------------------------------
//     Logic
//

//----
initial begin
	counter  = '0;
end

//---- DAC clock counter
always_ff @(posedge clk) begin
    if(counter < `DAC_CLK_FACTOR) begin
            counter <= counter + 1'b1;
        end
    else begin
        counter <= '0;
    end 
end

//---- DAC clock generator
always_ff @(posedge clk) begin
    case(counter)
        `DAC_CLK_FACTOR/2 - 1: dac_clk <= 1;
        `DAC_CLK_FACTOR   - 1: dac_clk <= 0;
    endcase
end
 
//---- DAC data source
always_ff @(posedge clk) begin
    if(counter == (`DAC_CLK_FACTOR/2 - 1)) begin
        dout <= dout + 1'b1;
    end

end

//------------------------------------------------------------------------------
//    Instances
//

//------------------------------------------------------------------------------
`ifndef SIMULATOR
    `ifndef NOT_USE_PLL
    	//---- PLL instance
        pll pll_inst
        (
            .clk_in1  ( ref_clk ),
            .clk_out1 ( clk     )
        );
    `else
        assign clk = ref_clk;
    `endif
`else
    assign clk = ref_clk;
`endif

endmodule : slon1_ip

