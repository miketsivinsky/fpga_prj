//--------------------------------------------------------------------------------------------------
//      project:       tq1m
//	module:        tq1m
//
//	description:   based at Harry Zhurov tq1 sdc 'slon'
//--------------------------------------------------------------------------------------------------

`include "tq1m.svh"

//******************************************************************************
//******************************************************************************
module tq1m
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
    //---- PLL clock
    `ifdef CFG_NAME_ALTERA_DE1
        pll_DE1 pll_inst
        (
            .inclk0 ( ref_clk ),
            .c0     ( clk     )
        );
    `elsif CFG_NAME_ALTERA_SOC
        bit pll_clk;
        altera_pll #(
			.reference_clock_frequency ( " 50 MHz" ),
			.output_clock_frequency0   ( "100 MHz" ),
			.operation_mode            (  "direct" ),
			.number_of_clocks          (        1  )
                    )
	pll_inst
        (
            .refclk   ( ref_clk ),
            .rst      ( 1'b0    ),
            .outclk   ( pll_clk )
        );
	assign clk = pll_clk;
//        clkctrl_SoC clkctrl_SoC_inst
//        (
//            .inclk    ( pll_clk ),
//            .outclk   ( clk     )
//        );

    `else
        assign clk = ref_clk;
    `endif

`else
    assign clk = ref_clk;
`endif

endmodule : tq1m

