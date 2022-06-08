module dataram(reset,clk,READ,WRITE,MEM_ADDR,MEM_DIN,MEM_DOUT);

	input reset           ;
	input clk             ;
	input READ,WRITE      ;
	input [4:0] MEM_ADDR  ;
	input [7:0] MEM_DIN ;

	output [7:0] MEM_DOUT;

	reg [7:0] MEM_DOUT;
                  
	reg [7:0] tmp   ;
	reg [7:0] one   ;
	reg [7:0] last_n;
	reg [7:0] n     ;
	reg [7:0] xn1   ;
	reg [7:0] xn    ;
	reg temp        ;

always@(posedge reset or posedge clk) begin
	 if(reset) begin
		MEM_DOUT  <= 8'b0;
		temp      <= 0;
	 end
	 else begin
	 	if(temp == 0)begin
			tmp    <= 8'b0       ;
			one    <= 8'b00000001;
			last_n <= 8'b00001010;
			n      <= 8'b00000000;
			xn1    <= 8'b00000001;
			xn     <= 8'b00000001;
			temp   <= 1;
		end
		if(READ)
				case(MEM_ADDR)
        			 5'b11010 : MEM_DOUT <= tmp        ;
       			 5'b11011 : MEM_DOUT <= one        ;
      			 5'b11100 : MEM_DOUT <= last_n     ;
       			 5'b11101 : MEM_DOUT <= n          ;
       			 5'b11110 : MEM_DOUT <= xn1        ;
       			 5'b11111 : MEM_DOUT <= xn         ;
       			 default  : MEM_DOUT <= 8'b00000000;
      		endcase
		else if(WRITE)
				case(MEM_ADDR)
					5'b11010 : tmp    <= MEM_DIN; 
					5'b11011 : one    <= MEM_DIN;
					5'b11100 : last_n <= MEM_DIN;
					5'b11101 : n      <= MEM_DIN;
					5'b11110 : xn1    <= MEM_DIN;
					5'b11111 : xn     <= MEM_DIN;
				endcase
		end
 end
     
endmodule