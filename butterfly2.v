`timescale 1ns / 1ps

// SRI HARI A S

module butterfly2(
	input clock,
	input signed [16:0] x1,
	input signed [16:0] y1,
	input signed [16:0] x2,
	input signed [16:0] y2,
	input signed [31:0] zangle,
	output signed [16:0] xout1,
	output signed [16:0] yout1,
	output signed [16:0] xout2,
	output signed [16:0] yout2
        );

wire signed [16:0] xtemp2,ytemp2;
wire signed [16:0] xin2,yin2;

  assign xin2 = (x2 >>> 1) + (x2 >>> 4) + (x2 >>> 5) + (x2 >>> 6);
  assign yin2 = (y2 >>> 1) + (y2 >>> 4) + (y2 >>> 5) + (y2 >>> 6);
     // assign xin2 = x2 / 1.647;
     // assign yin2 = y2 / 1.647;
        
      CORDIC c1 (clock,zangle,xin2,yin2,xtemp2,ytemp2);

      assign xout1 = x1+xtemp2;
      assign yout1 = y1+ytemp2;
      assign xout2 = x1-xtemp2;
      assign yout2 = y1-ytemp2;

endmodule


