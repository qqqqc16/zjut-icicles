module division_6(clk,rst,clk_odd);
    input clk;
    input rst;
    output clk_odd;
    reg clk_odd;
    reg[3:0] count;
    parameter N=6;
    always @(posedge clk)
	if(!rst)
	    begin
		count<=1'b0;
		clk_odd<=1'b0;
	    end
	else if(N%2==0)
	    begin
		if(count<N/2-1)
		    begin
			count<=count+1'b1;
		    end
		else
		    begin
			count<=1'b0;
			clk_odd<=~ clk_odd;
		    end
		end
endmodule