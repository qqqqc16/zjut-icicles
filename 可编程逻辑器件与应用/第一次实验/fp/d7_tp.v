`timescale 10ns/1ns
module d7_tp;
    reg clk,rst;
    wire clk_even;
    division_7 myfp7(clk,rst,clk_even);
    initial clk=0;
	always
	    begin
		#5 clk=1'b1;
		#5 clk=1'b0;
	    end
	initial
	    begin
		rst=0;
		#20 rst=1;
		#800 $finish;
	    end
endmodule
