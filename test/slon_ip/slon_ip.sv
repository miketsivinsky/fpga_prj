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
typedef bit [`DOUT_WIDTH-1:0]         Data_t;
typedef bit [$clog2(`CLK_FACTOR)-1:0] Counter_t;
typedef bit [`ADDR_WIDTH-1:0]         Addr_t;

typedef struct
{
	bit    rst;
	Data_t data_in;
	Data_t data_out;
	bit    load;
	bit    get;
	bit    full;
	bit    empty;
}
BufCtrl_t;

//-----------------------------------------------------------------------------
Counter_t counter;
Addr_t    addr;
bit       rst;
bit       clk;
bit       clk_ena;

`ifdef USE_MEM_IP_CORES
	bit       [`DOUT_WIDTH-1:0] ram_in;
	bit       [`DOUT_WIDTH-1:0] ram_out;
	BufCtrl_t                   buf1_ctrl;
	BufCtrl_t                   buf2_ctrl;
	BufCtrl_t                   buf3_ctrl;
`endif

//------------------------------------------------------------------------------
//     Logic
//

//----
initial begin
	rst      = 1'b0;
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
`ifndef USE_MEM_IP_CORES
    always_ff @(posedge clk) begin
       if(counter == (`CLK_FACTOR/2 - 1)) begin
           dout <= dout + 1'b1;
        end
    end
`endif

`ifdef USE_MEM_IP_CORES
    assign buf1_ctrl.rst     = rst;
    assign buf1_ctrl.data_in = ram_out;
    assign buf1_ctrl.load    = clk_ena && !buf1_ctrl.full;
    assign buf1_ctrl.get     = !buf1_ctrl.rst && clk_ena && !buf1_ctrl.empty && !buf2_ctrl.full;

    assign buf2_ctrl.rst     = rst;
    assign buf2_ctrl.data_in = buf1_ctrl.data_out;
    assign buf2_ctrl.load    = buf1_ctrl.get;
    assign buf2_ctrl.get     = !buf2_ctrl.rst && clk_ena && !buf2_ctrl.empty && !buf3_ctrl.full;

    assign buf3_ctrl.rst     = rst;
    assign buf3_ctrl.data_in = buf2_ctrl.data_out;
    assign buf3_ctrl.load    = buf2_ctrl.get;
    assign buf3_ctrl.get     = !buf3_ctrl.rst && clk_ena && !buf3_ctrl.empty;
    
    assign dout              = buf3_ctrl.data_out;
`endif

//------------------------------------------------------------------------------
//    Instances
//

//------------------------------------------------------------------------------
`ifdef USE_MEM_IP_CORES
    ram_16x8 ram_16x8_inst (
    .clka  ( clk     ),      // input wire clka
    .ena   ( clk_ena ),      // input wire ena
    .wea   ( 1'b0    ),      // input wire [0 : 0] wea
    .addra ( addr    ),      // input wire [3 : 0] addra
    .dina  ( ram_in  ),      // input wire [7 : 0] dina
    .douta ( ram_out )       // output wire [7 : 0] douta
    );

    fifo_512x8 fifo_512x8_inst (
    .clk        ( clk                ),      // input wire clka
    .srst       ( buf1_ctrl.rst      ),      // input wire srst
    .din        ( buf1_ctrl.data_in  ),      // input wire [7 : 0] din
    .wr_en      ( buf1_ctrl.load     ),      // input wire wr_en
    .rd_en      ( buf1_ctrl.get      ),      // input wire rd_en
    .dout       ( buf1_ctrl.data_out ),      // output wire [7 : 0] dout
    .full       ( buf1_ctrl.full     ),      // output wire full
    .empty      ( buf1_ctrl.empty    ),      // output wire empty
    .data_count (                    )       // output wire [9 : 0] data_count
    );

    fifo_256x8 fifo_256x8_inst (
    .clk        ( clk                ),      // input wire clka
    .srst       ( buf2_ctrl.rst      ),      // input wire srst
    .din        ( buf2_ctrl.data_in  ),      // input wire [7 : 0] din
    .wr_en      ( buf2_ctrl.load     ),      // input wire wr_en
    .rd_en      ( buf2_ctrl.get      ),      // input wire rd_en
    .dout       ( buf2_ctrl.data_out ),      // output wire [7 : 0] dout
    .full       ( buf2_ctrl.full     ),      // output wire full
    .empty      ( buf2_ctrl.empty    ),      // output wire empty
    .data_count (                    )       // output wire [8 : 0] data_count
    );

    fifo_1024x8 fifo_1024x8_inst (
    .clk        ( clk                ),      // input wire clka
    .srst       ( buf3_ctrl.rst      ),      // input wire srst
    .din        ( buf3_ctrl.data_in  ),      // input wire [7 : 0] din
    .wr_en      ( buf3_ctrl.load     ),      // input wire wr_en
    .rd_en      ( buf3_ctrl.get      ),      // input wire rd_en
    .dout       ( buf3_ctrl.data_out ),      // output wire [7 : 0] dout
    .full       ( buf3_ctrl.full     ),      // output wire full
    .empty      ( buf3_ctrl.empty    ),      // output wire empty
    .data_count (                    )       // output wire [10 : 0] data_count
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

