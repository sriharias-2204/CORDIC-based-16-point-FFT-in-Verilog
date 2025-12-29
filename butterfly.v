`timescale 1ns / 1ps

// SRI HARI A S

module butterfly(
	input clock,
	input signed [15:0] x1,
	input signed [15:0] y1,
	input signed [15:0] x2,
	input signed [15:0] y2,
	input signed [31:0] zangle,
	output signed [15:0] xout1,
	output signed [15:0] yout1,
	output signed [15:0] xout2,
	output signed [15:0] yout2
        );

/*wire signed [15:0] xtemp1,xtemp2,ytemp1,ytemp2,ytemp3;
wire signed [15:0] xin1,yin1,xin2,yin2;
assign xin1 = (x1 >>> 1) + (x1 >>> 2) - (x1 >>> 3) - (x1 >>> 6); 
assign yin1 = (y1 >>> 1) + (y1 >>> 2) - (y1 >>> 3) - (y1 >>> 6); 
assign xin2 = (x2 >>> 1) + (x2 >>> 2) - (x2 >>> 3) - (x2 >>> 6); 
assign yin2 = (y2 >>> 1) + (y2 >>> 2) - (y2 >>> 3) - (y2 >>> 6); 
assign xin1=x1/1.647;
assign yin1=y1/1.647;
assign xin2=x2/1.647;
assign yin2=y2/1.647;

//CORDIC c1(clock,0,xin1,yin1,xtemp1,ytemp1);
CORDIC c2(clock,zangle,xin2,yin2,xtemp2,ytemp2);
assign ytemp3 = -ytemp2;*/

assign xout1 = x1+x2;
assign yout1 = y1+y2;

assign xout2 = x1-x2;
assign yout2 = y1-y2;

endmodule
