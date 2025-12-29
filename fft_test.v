`timescale 1ns / 1ps

// SRI HARI A S

module fft_test;
    reg clock;
    reg [15:0] xin1;
    reg [15:0] xin2;
    reg [15:0] xin3;
    reg [15:0] xin4;
    reg [15:0] xin5;
    reg [15:0] xin6;
    reg [15:0] xin7;
    reg [15:0] xin8;
    reg [15:0] xin9;
    reg [15:0] xin10;
    reg [15:0] xin11;
    reg [15:0] xin12;
    reg [15:0] xin13;
    reg [15:0] xin14;
    reg [15:0] xin15;
    reg [15:0] xin16;
    reg [15:0] yin1;
    reg [15:0] yin2;
    reg [15:0] yin3;
    reg [15:0] yin4;
    reg [15:0] yin5;
    reg [15:0] yin6;
    reg [15:0] yin7;
    reg [15:0] yin8;
    reg [15:0] yin9;
    reg [15:0] yin10;
    reg [15:0] yin11;
    reg [15:0] yin12;
    reg [15:0] yin13;
    reg [15:0] yin14;
    reg [15:0] yin15;
    reg [15:0] yin16;
    
    wire [16:0] xout1;
    wire [16:0] xout2;
    wire [16:0] xout3;
    wire [16:0] xout4;
    wire [16:0] xout5;
    wire [16:0] xout6;
    wire [16:0] xout7;
    wire [16:0] xout8;
    wire [16:0] xout9;
    wire [16:0] xout10;
    wire [16:0] xout11;
    wire [16:0] xout12;
    wire [16:0] xout13;
    wire [16:0] xout14;
    wire [16:0] xout15;
    wire [16:0] xout16;
    wire [16:0] yout1;
    wire [16:0] yout2;
    wire [16:0] yout3;
    wire [16:0] yout4;
    wire [16:0] yout5;
    wire [16:0] yout6;
    wire [16:0] yout7;
    wire [16:0] yout8;
    wire [16:0] yout9;
    wire [16:0] yout10;
    wire [16:0] yout11;
    wire [16:0] yout12;
    wire [16:0] yout13;
    wire [16:0] yout14;
    wire [16:0] yout15;
    wire [16:0] yout16;


    fft1 uut (
        .clock(clock),
        .xin1(xin1), 
        .xin2(xin2), 
        .xin3(xin3), 
        .xin4(xin4), 
        .xin5(xin5), 
        .xin6(xin6), 
        .xin7(xin7), 
        .xin8(xin8), 
        .xin9(xin9), 
        .xin10(xin10), 
        .xin11(xin11), 
        .xin12(xin12), 
        .xin13(xin13), 
        .xin14(xin14), 
        .xin15(xin15), 
        .xin16(xin16), 
        .yin1(yin1), 
        .yin2(yin2), 
        .yin3(yin3), 
        .yin4(yin4), 
        .yin5(yin5), 
        .yin6(yin6), 
        .yin7(yin7), 
        .yin8(yin8), 
        .yin9(yin9), 
        .yin10(yin10), 
        .yin11(yin11), 
        .yin12(yin12), 
        .yin13(yin13), 
        .yin14(yin14), 
        .yin15(yin15), 
        .yin16(yin16),
	.xout1(xout1), 
        .xout2(xout2),
    	.xout3(xout3),
    	.xout4(xout4),
    	.xout5(xout5),
    	.xout6(xout6),
    	.xout7(xout7),
    	.xout8(xout8),
    	.xout9(xout9),
    	.xout10(xout10),
    	.xout11(xout11),
    	.xout12(xout12),
    	.xout13(xout13),
    	.xout14(xout14),
    	.xout15(xout15),
    	.xout16(xout16),
    	.yout1(yout1),
    	.yout2(yout2),
    	.yout3(yout3),
    	.yout4(yout4),
    	.yout5(yout5),
    	.yout6(yout6),
    	.yout7(yout7),
    	.yout8(yout8),
    	.yout9(yout9),
    	.yout10(yout10),
    	.yout11(yout11),
    	.yout12(yout12),
    	.yout13(yout13),
    	.yout14(yout14),
	.yout15(yout15),
    	.yout16(yout16)
 
    );

    initial begin
        clock = 0;
        forever #5 clock = ~clock;
    end

    initial begin
        xin1 = 0; xin2 = 0; xin3 = 0; xin4 = 0;
        xin5 = 0; xin6 = 0; xin7 = 0; xin8 = 0;
        xin9 = 0; xin10 = 0; xin11 = 0; xin12 = 0;
        xin13 = 0; xin14 = 0; xin15 = 0; xin16 = 0;
        yin1 = 0; yin2 = 0; yin3 = 0; yin4 = 0;
        yin5 = 0; yin6 = 0; yin7 = 0; yin8 = 0;
        yin9 = 0; yin10 = 0; yin11 = 0; yin12 = 0;
        yin13 = 0; yin14 = 0; yin15 = 0; yin16 = 0;

        #10;
        
        xin1 = 640;
        xin2 = 122;
        xin3 = -226;
        xin4 = -122;
        xin5 = 0;
        xin6 = -122;
        xin7 = -226;
        xin8 = 122;
        xin9 = 640;
        xin10 = 122;
        xin11 = -226;
        xin12 = -122;
        xin13 = 0;
        xin14 = -122;
        xin15 = -226;
        xin16 = 122;
        yin1 = 0;
        yin2 = 0;
        yin3 = 0;
        yin4 = 0;
        yin5 = 0;
        yin6 = 0;
        yin7 = 0;
        yin8 = 0;
        yin9 = 0;
        yin10 = 0;
        yin11 = 0;
        yin12 = 0;
        yin13 = 0;
        yin14 = 0;
        yin15 = 0;
        yin16 = 0;
        // Wait for some time to capture the output
        #1000;

        $display(" The input is x = %b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n  y = %b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n",xin1,xin2,xin3,xin4,xin5,xin6,xin7,xin8,xin9,xin10,xin11,xin12,xin13,xin14,xin15,xin16,yin1,yin2,yin3,yin4,yin5,yin6,yin7,yin8,yin9,yin10,yin11,yin12,yin13,yin14,yin15,yin16);
        $display(" The result is xout = %b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n  yout = %b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n",xout1,xout2,xout3,xout4,xout5,xout6,xout7,xout8,xout9,xout10,xout11,xout12,xout13,xout14,xout15,xout16,yout1,yout2,yout3,yout4,yout5,yout6,yout7,yout8,yout9,yout10,yout11,yout12,yout13,yout14,yout15,yout16);

        // Finish simulation
        $finish;
    end
endmodule


