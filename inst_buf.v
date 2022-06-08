module inst_buf(reset,clk,ld,inst_buf_in,inst_buf_out);

	input reset            ;
	input clk              ;
	input ld               ;
	input [7:0] inst_buf_in;

	output [7:0] inst_buf_out;

	reg [7:0] inst_buf_out;
	//reg [7:0] tmp;
	//assign inst_buf_out = tmp;

always@(posedge reset or posedge clk) begin
	if(reset)
	 //tmp <= 8'b0;
	 inst_buf_out <= 8'b0;
	else
	 if(ld) begin
	  //tmp <= inst_buf_in;
	  inst_buf_out <= inst_buf_in;
	end
end

endmodule