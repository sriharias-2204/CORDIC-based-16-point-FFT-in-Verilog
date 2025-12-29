`timescale 1ns / 1ps

// SRI HARI A S

module fft1(
    input clock,
    input signed [15:0] xin1,
    input signed [15:0] xin2,
    input signed [15:0] xin3,
    input signed [15:0] xin4,
    input signed [15:0] xin5,
    input signed [15:0] xin6,
    input signed [15:0] xin7,
    input signed [15:0] xin8,
    input signed [15:0] xin9,
    input signed [15:0] xin10,
    input signed [15:0] xin11,
    input signed [15:0] xin12,
    input signed [15:0] xin13,
    input signed [15:0] xin14,
    input signed [15:0] xin15,
    input signed [15:0] xin16,
    
    input signed [15:0] yin1,
    input signed [15:0] yin2,
    input signed [15:0] yin3,
    input signed [15:0] yin4,
    input signed [15:0] yin5,
    input signed [15:0] yin6,
    input signed [15:0] yin7,
    input signed [15:0] yin8,
    input signed [15:0] yin9,
    input signed [15:0] yin10,
    input signed [15:0] yin11,
    input signed [15:0] yin12,
    input signed [15:0] yin13,
    input signed [15:0] yin14,
    input signed [15:0] yin15,
    input signed [15:0] yin16,

    input signed [16:0] xout1,
    input signed [16:0] xout2,
    input signed [16:0] xout3,
    input signed [16:0] xout4,
    input signed [16:0] xout5,
    input signed [16:0] xout6,
    input signed [16:0] xout7,
    input signed [16:0] xout8,
    input signed [16:0] xout9,
    input signed [16:0] xout10,
    input signed [16:0] xout11,
    input signed [16:0] xout12,
    input signed [16:0] xout13,
    input signed [16:0] xout14,
    input signed [16:0] xout15,
    input signed [16:0] xout16,

    input signed [16:0] yout1,
    input signed [16:0] yout2,
    input signed [16:0] yout3,
    input signed [16:0] yout4,
    input signed [16:0] yout5,
    input signed [16:0] yout6,
    input signed [16:0] yout7,
    input signed [16:0] yout8,
    input signed [16:0] yout9,
    input signed [16:0] yout10,
    input signed [16:0] yout11,
    input signed [16:0] yout12,
    input signed [16:0] yout13,
    input signed [16:0] yout14,
    input signed [16:0] yout15,
    input signed [16:0] yout16
);

genvar i;

wire signed [31:0] angle_lut [0:7];

assign angle_lut[0] = 0;
assign angle_lut[1] = 'b11110000000000000000000000000000;
assign angle_lut[2] = 'b11100000000000000000000000000000;
assign angle_lut[3] = 'b11010000000000000000000000000000;
assign angle_lut[4] = 'b11000000000000000000000000000000;
assign angle_lut[5] = 'b10110000000000000000000000000000;
assign angle_lut[6] = 'b10100000000000000000000000000000;
assign angle_lut[7] = 'b10010000000000000000000000000000;

wire signed[15:0] xtemp_in[0:15];
wire signed[15:0] ytemp_in[0:15];

wire signed[16:0] xtemp_out[0:15];
wire signed[16:0] ytemp_out[0:15];

assign {xtemp_in[0], xtemp_in[1], xtemp_in[2], xtemp_in[3], xtemp_in[4], xtemp_in[5], xtemp_in[6], xtemp_in[7], xtemp_in[8], xtemp_in[9], xtemp_in[10], xtemp_in[11], xtemp_in[12], xtemp_in[13], xtemp_in[14], xtemp_in[15]} = {xin1, xin2, xin3, xin4, xin5, xin6, xin7, xin8, xin9, xin10, xin11, xin12, xin13, xin14, xin15, xin16};
assign {ytemp_in[0], ytemp_in[1], ytemp_in[2], ytemp_in[3], ytemp_in[4], ytemp_in[5], ytemp_in[6], ytemp_in[7], ytemp_in[8], ytemp_in[9], ytemp_in[10], ytemp_in[11], ytemp_in[12], ytemp_in[13], ytemp_in[14], ytemp_in[15]} = {yin1, yin2, yin3, yin4, yin5, yin6, yin7, yin8, yin9, yin10, yin11, yin12, yin13, yin14, yin15, yin16};

wire signed[15:0] xtemp1[0:15];
wire signed[15:0] ytemp1[0:15];

wire signed[16:0] xtemp2[0:15];
wire signed[16:0] ytemp2[0:15];

wire signed[16:0] xtemp3[0:15];
wire signed[16:0] ytemp3[0:15];


butterfly b1(.clock(clock), .x1(xtemp_in[0]), .y1(ytemp_in[0]), .x2(xtemp_in[8]), .y2(ytemp_in[8]), .zangle(angle_lut[0]), .xout1(xtemp1[0]), .yout1(ytemp1[0]), .xout2(xtemp1[1]), .yout2(ytemp1[1]));
butterfly b2(.clock(clock), .x1(xtemp_in[4]), .y1(ytemp_in[4]), .x2(xtemp_in[12]), .y2(ytemp_in[12]), .zangle(angle_lut[0]), .xout1(xtemp1[2]), .yout1(ytemp1[2]), .xout2(xtemp1[3]), .yout2(ytemp1[3]));
butterfly b3(.clock(clock), .x1(xtemp_in[2]), .y1(ytemp_in[2]), .x2(xtemp_in[10]), .y2(ytemp_in[10]), .zangle(angle_lut[0]), .xout1(xtemp1[4]), .yout1(ytemp1[4]), .xout2(xtemp1[5]), .yout2(ytemp1[5]));
butterfly b4(.clock(clock), .x1(xtemp_in[6]), .y1(ytemp_in[6]), .x2(xtemp_in[14]), .y2(ytemp_in[14]), .zangle(angle_lut[0]), .xout1(xtemp1[6]), .yout1(ytemp1[6]), .xout2(xtemp1[7]), .yout2(ytemp1[7]));

butterfly b5(.clock(clock), .x1(xtemp_in[1]), .y1(ytemp_in[1]), .x2(xtemp_in[9]), .y2(ytemp_in[9]), .zangle(angle_lut[0]), .xout1(xtemp1[8]), .yout1(ytemp1[8]), .xout2(xtemp1[9]), .yout2(ytemp1[9]));
butterfly b6(.clock(clock), .x1(xtemp_in[5]), .y1(ytemp_in[5]), .x2(xtemp_in[13]), .y2(ytemp_in[13]), .zangle(angle_lut[0]), .xout1(xtemp1[10]), .yout1(ytemp1[10]), .xout2(xtemp1[11]), .yout2(ytemp1[11]));
butterfly b7(.clock(clock), .x1(xtemp_in[3]), .y1(ytemp_in[3]), .x2(xtemp_in[11]), .y2(ytemp_in[11]), .zangle(angle_lut[0]), .xout1(xtemp1[12]), .yout1(ytemp1[12]), .xout2(xtemp1[13]), .yout2(ytemp1[13]));
butterfly b8(.clock(clock), .x1(xtemp_in[7]), .y1(ytemp_in[7]), .x2(xtemp_in[15]), .y2(ytemp_in[15]), .zangle(angle_lut[0]), .xout1(xtemp1[14]), .yout1(ytemp1[14]), .xout2(xtemp1[15]), .yout2(ytemp1[15]));

generate
for (i = 0; i < 9; i = i + 8)
begin: butterflies1
    butterfly1 b9(.clock(clock), .x1(xtemp1[i]), .y1(ytemp1[i]), .x2(xtemp1[i+2]), .y2(ytemp1[i+2]), .zangle(angle_lut[0]), .xout1(xtemp2[i]), .yout1(ytemp2[i]), .xout2(xtemp2[i+2]), .yout2(ytemp2[i+2]));
    butterfly1 b10(.clock(clock), .x1(xtemp1[i+1]), .y1(ytemp1[i+1]), .x2(xtemp1[i+3]), .y2(ytemp1[i+3]), .zangle(angle_lut[4]), .xout1(xtemp2[i+1]), .yout1(ytemp2[i+1]), .xout2(xtemp2[i+3]), .yout2(ytemp2[i+3]));
    butterfly1 b11(.clock(clock), .x1(xtemp1[i+4]), .y1(ytemp1[i+4]), .x2(xtemp1[i+6]), .y2(ytemp1[i+6]), .zangle(angle_lut[0]), .xout1(xtemp2[i+4]), .yout1(ytemp2[i+4]), .xout2(xtemp2[i+6]), .yout2(ytemp2[i+6]));
    butterfly1 b12(.clock(clock), .x1(xtemp1[i+5]), .y1(ytemp1[i+5]), .x2(xtemp1[i+7]), .y2(ytemp1[i+7]), .zangle(angle_lut[4]), .xout1(xtemp2[i+5]), .yout1(ytemp2[i+5]), .xout2(xtemp2[i+7]), .yout2(ytemp2[i+7]));
end
endgenerate

generate
for (i = 0; i < 9; i = i + 8)
begin: butterflies2
    butterfly2 b13(.clock(clock), .x1(xtemp2[i]), .y1(ytemp2[i]), .x2(xtemp2[i+4]), .y2(ytemp2[i+4]), .zangle(angle_lut[0]), .xout1(xtemp3[i]), .yout1(ytemp3[i]), .xout2(xtemp3[i+4]), .yout2(ytemp3[i+4]));
    butterfly2 b14(.clock(clock), .x1(xtemp2[i+1]), .y1(ytemp2[i+1]), .x2(xtemp2[i+5]), .y2(ytemp2[i+5]), .zangle(angle_lut[2]), .xout1(xtemp3[i+1]), .yout1(ytemp3[i+1]), .xout2(xtemp3[i+5]), .yout2(ytemp3[i+5]));
    butterfly2 b15(.clock(clock), .x1(xtemp2[i+2]), .y1(ytemp2[i+2]), .x2(xtemp2[i+6]), .y2(ytemp2[i+6]), .zangle(angle_lut[4]), .xout1(xtemp3[i+2]), .yout1(ytemp3[i+2]), .xout2(xtemp3[i+6]), .yout2(ytemp3[i+6]));
    butterfly2 b16(.clock(clock), .x1(xtemp2[i+3]), .y1(ytemp2[i+3]), .x2(xtemp2[i+7]), .y2(ytemp2[i+7]), .zangle(angle_lut[6]), .xout1(xtemp3[i+3]), .yout1(ytemp3[i+3]), .xout2(xtemp3[i+7]), .yout2(ytemp3[i+7]));
end
endgenerate

generate
for (i = 0; i < 8; i = i + 1)
begin: butterflies3
    butterfly2 b17(.clock(clock), .x1(xtemp3[i]), .y1(ytemp3[i]), .x2(xtemp3[i+8]), .y2(ytemp3[i+8]), .zangle(angle_lut[i]), .xout1(xtemp_out[i]), .yout1(ytemp_out[i]), .xout2(xtemp_out[i+8]), .yout2(ytemp_out[i+8]));
end
endgenerate


assign {xout1,xout2,xout3,xout4,xout5,xout6,xout7,xout8,xout9,xout10,xout11,xout12,xout13,xout14,xout15,xout16} = {xtemp_out[0], xtemp_out[1], xtemp_out[2], xtemp_out[3], xtemp_out[4], xtemp_out[5], xtemp_out[6], xtemp_out[7], xtemp_out[8], xtemp_out[9], xtemp_out[10], xtemp_out[11], xtemp_out[12], xtemp_out[13], xtemp_out[14], xtemp_out[15]};
assign {yout1,yout2,yout3,yout4,yout5,yout6,yout7,yout8,yout9,yout10,yout11,yout12,yout13,yout14,yout15,yout16} = {ytemp_out[0], ytemp_out[1], ytemp_out[2], ytemp_out[3], ytemp_out[4], ytemp_out[5], ytemp_out[6], ytemp_out[7], ytemp_out[8], ytemp_out[9], ytemp_out[10], ytemp_out[11], ytemp_out[12], ytemp_out[13], ytemp_out[14], ytemp_out[15]};

endmodule


