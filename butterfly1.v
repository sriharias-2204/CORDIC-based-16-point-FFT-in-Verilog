`timescale 1ns / 1ps

// SRI HARI A S

module butterfly1(
    input clock,
    input signed [15:0] x1,
    input signed [15:0] y1,
    input signed [15:0] x2,
    input signed [15:0] y2,
    input signed [31:0] zangle,
    output reg signed [16:0] xout1,
    output reg signed [16:0] yout1,
    output reg signed [16:0] xout2,
    output reg signed [16:0] yout2
    );

reg signed [16:0] xtemp2, ytemp2;
wire signed [15:0] xin2, yin2;
wire signed [16:0] xin1, yin1, xin1_2, yin1_2;

assign xin1 = {x1[15], x1};      // Sign extend x1 to 17 bits
assign yin1 = {y1[15], y1};      // Sign extend y1 to 17 bits
assign xin1_2 = {x2[15], x2};    // Sign extend x2 to 17 bits
assign yin1_2 = {y2[15], y2};    // Sign extend y2 to 17 bits

always @(*) begin
    if (zangle == 0) begin
        // Basic butterfly operation when zangle is 0
        xout1 = xin1 + xin1_2;
        yout1 = yin1 + yin1_2;
        xout2 = xin1 - xin1_2;
        yout2 = yin1 - yin1_2;
    end else begin
        // Use zangle for computation (rotation case)
        xtemp2 = yin1_2;
        ytemp2 = -xin1_2;
        
        xout1 = xin1 + xtemp2;
        yout1 = yin1 + ytemp2;
        xout2 = xin1 - xtemp2;
        yout2 = yin1 - ytemp2;
    end
end

endmodule


