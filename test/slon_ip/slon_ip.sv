//--------------------------------------------------------------------------------------------------
//      project:       slon_ip
//	module:        slon_ip
//
//	description:   test and study xilinx ip workflow
//--------------------------------------------------------------------------------------------------

`include "slon_ip.svh"    

//******************************************************************************
//******************************************************************************
module slon_ip
(
    input  bit                   ref_clk,
                                 
    output bit                   out_clk,
    output bit [`DOUT_WIDTH-1:0] dout
);

//-----------------------------------------------------------------------------
typedef bit [$clog2(`CLK_FACTOR)-1:0] Counter_t;
typedef bit [`ADDR_WIDTH-1:0]         Addr_t;

//-----------------------------------------------------------------------------
Counter_t counter;
Addr_t    addr;
bit       clk;
bit       clk_ena;
bit       [`DOUT_WIDTH-1:0] ram_in;
//------------------------------------------------------------------------------
//     Logic
//

//----
initial begin
	counter  = '0;
	addr     = '0;
	clk_ena  = 1'b0;
	ram_in   = '1;
end

//---- clock counter
always_ff @(posedge clk) begin
    if(counter < `CLK_FACTOR) begin
            counter <= counter + 1'b1;
        end
    else begin
        counter <= '0;
    end 
end

//---- clock generator
always_ff @(posedge clk) begin
    case(counter)
        `CLK_FACTOR/2 - 1: out_clk <= 1'b1;
        `CLK_FACTOR   - 1: out_clk <= 1'b0;
    endcase
end

//---- data address generator
always_ff @(posedge clk) begin
    clk_ena <= 1'b0;
    if(counter == (`CLK_FACTOR/2 - 1)) begin
        addr    <= addr + 1'b1;
        clk_ena <= 1'b1;
    end
end

//---- out data source
`ifndef USE_RAM
    always_ff @(posedge clk) begin
       if(counter == (`CLK_FACTOR/2 - 1)) begin
           dout <= dout + 1'b1;
        end
    end
`endif

//------------------------------------------------------------------------------
//    Instances
//

//------------------------------------------------------------------------------
`ifdef USE_RAM
    ram_16x8 ram_16x8_inst (
    .clka  ( clk     ),      // input wire clka
    .ena   ( clk_ena ),      // input wire ena
    .wea   ( 1'b0    ),      // input wire [0 : 0] wea
    .addra ( addr    ),      // input wire [3 : 0] addra
    .dina  ( ram_in  ),      // input wire [7 : 0] dina
    .douta ( dout    )       // output wire [7 : 0] douta
    );
`endif

`ifndef SIMULATOR
    `ifdef USE_PLL
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

endmodule : slon_ip

