`timescale 1ns/1ps

module FullModel_tb;

    reg [3:0]x;
    reg [3:0]y;
    reg [1:0]opcode;
    wire [7:0]answer;

    FullModel fm1(.m(x),.n(y),.op(opcode),.ans(answer));

    initial begin
        x=4'b1001;
        y=4'b0101;
        opcode=2'b00;
        #10;
        x=4'b1001;
        y=4'b0101;
        opcode=2'b01;
        #10;
        x=4'b1001;
        y=4'b0101;
        opcode=2'b10;
        #10;
        x=4'b1001;
        y=4'b0101;
        opcode=2'b11;
        #10;
    end
endmodule