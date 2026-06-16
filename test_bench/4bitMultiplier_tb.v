`timescale 1ns/1ps

module Multiplier_tb;

    reg [3:0]x;
    reg [3:0]y;
    wire [7:0]z;

    Multiplier m1(.a(x),.b(y),.p(z));

    initial begin
        x=4'b1101;
        y=4'b1011;
        #10;
        x=4'b1111;
        y=4'b1111;
        #10;
        x=4'b1100;
        y=4'b1101;
        #10;
    end
endmodule