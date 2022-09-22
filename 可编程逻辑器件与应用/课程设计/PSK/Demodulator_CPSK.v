//通信工程1803 凌智城201806061211
module Demodulator_CPSK(clk,start,x,y);
	input clk;		//系统时钟信号
	input start;	//开始调制信号
	input x;
	output y;
	reg y;
	reg[1:0]q;
	always@(posedge clk)
		begin
			if(!start)
				q<=0;
			else if(q==0)
				begin
					q<=q+1'b1;
					if(x)
						y<=1;
					else
						y<=0;
				end
			else if(q==3)
				q<=0;
			else
				q<=q+1'b1;
		end
endmodule