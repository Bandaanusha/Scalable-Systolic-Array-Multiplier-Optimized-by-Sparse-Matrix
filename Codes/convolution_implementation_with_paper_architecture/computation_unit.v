`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.04.2023 17:20:55
// Design Name: 
// Module Name: computation_unit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////



module computation_unit(clk, m1x,m2x,c1,co1,f);
input clk;
input [7:0] m1x, m2x;
//input [7:0] m1a,m1b,m1c,m1d,m2;
input [8:0] c1;
//input [8:0] c1,c2,c3,c4;
input f;
output reg [8:0] co1;
//output reg [8:0] co1,co2,co3,co4;
//reg [7:0] m1 [3:0];
//reg [7:0] c [3:0];
//reg [7:0] co;
reg [7:0] pm1am2;
//reg [7:0] pm1am2,pm1bm2,pm1cm2,pm1dm2;
// reg [7:0] pm1m2;
reg [7:0] sout, fnew, en;
// reg [2:0] i=0;

always @(posedge clk)
begin
    
    fnew = {f,f,f,f,f,f,f,f};
    en = (fnew & m2x);

    sout = m2x && 1'b1;
    sout = {sout[0],sout[0], sout[0], sout[0], sout[0], sout[0], sout[0], sout[0]};
    pm1am2 = m1x * en;
    
    
    co1 = (sout & pm1am2) + c1;


end

endmodule

