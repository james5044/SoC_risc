module prom(reset,clk,MEM_ADDR,MEM_DOUT);

	input reset           ;
	input clk             ;
	input [4:0] MEM_ADDR  ;

	output [7:0] MEM_DOUT;

	reg [7:0] MEM_DOUT   ;
                  
always@(posedge reset or posedge clk) begin
	 if(reset)
			MEM_DOUT <= 8'b0;
	 else
			case(MEM_ADDR)
				5'b00000 : MEM_DOUT <= 8'b10111111;
				5'b00001 : MEM_DOUT <= 8'b01011110;
				5'b00010 : MEM_DOUT <= 8'b11011010;
				5'b00011 : MEM_DOUT <= 8'b10111111;
				5'b00100 : MEM_DOUT <= 8'b11011110;
				5'b00101 : MEM_DOUT <= 8'b10111010;
				5'b00110 : MEM_DOUT <= 8'b11011111;
				5'b00111 : MEM_DOUT <= 8'b10111101;
				5'b01000 : MEM_DOUT <= 8'b01011011;
				5'b01001 : MEM_DOUT <= 8'b11011101;
				5'b01010 : MEM_DOUT <= 8'b10011100;
				5'b01011 : MEM_DOUT <= 8'b00100000;
				5'b01100 : MEM_DOUT <= 8'b11100000;
				5'b01101 : MEM_DOUT <= 8'b00000000;
				5'b11011 : MEM_DOUT <= 8'b00000000;
				5'b11100 : MEM_DOUT <= 8'b00000000;
				5'b11101 : MEM_DOUT <= 8'b00000000;
				5'b11110 : MEM_DOUT <= 8'b00000000;
				5'b11111 : MEM_DOUT <= 8'b00000000;
				default  : MEM_DOUT <= 8'b00000000;
         endcase
 end
endmodule
