module clk_generator(clk,mc_clk,mem_clk);

	input clk;

	output mc_clk,mem_clk;

	reg mc_clk,mem_clk;

always@(*) begin
 mc_clk = clk;
 mem_clk = ~clk;
end

endmodule