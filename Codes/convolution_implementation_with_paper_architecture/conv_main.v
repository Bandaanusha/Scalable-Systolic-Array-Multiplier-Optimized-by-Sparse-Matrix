`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.04.2023 17:18:42
// Design Name: 
// Module Name: conv_main
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


module conv_main(clk,m1i1,m1i2,m1i3,m1i4,m2c1,m2c2,m2c3,m2c4,m2c5, m2c6, m2c7, m2c8, m2c9, m2c10, m2c11, m2c12, m2c13, m2c14, m2c15, m2c16, f11, f12, f13, f14, f21, f22, f23, f24, f31, f32, f33, f34, f41, f42, f43, f44, o1,o2,o3,o4, final_out);
input clk;
input [7:0] m1i1,m1i2,m1i3,m1i4;
input [7:0] m2c1,m2c2,m2c3,m2c4;
input [7:0] m2c5,m2c6,m2c7,m2c8;
input [7:0] m2c9,m2c10,m2c11,m2c12;
input [7:0] m2c13,m2c14,m2c15,m2c16;

input f11, f12, f13, f14, f21, f22, f23, f24, f31, f32, f33, f34, f41, f42, f43, f44;
output [8:0] o1,o2,o3,o4;
output reg [9:0] final_out;
wire [8:0] cu1oc1,cu2oc1,cu3oc1,cu4oc1;
wire [8:0] cu5oc1,cu6oc1,cu7oc1,cu8oc1;
wire [8:0] cu9oc1,cu10oc1,cu11oc1,cu12oc1;
wire [8:0] cu13oc1,cu14oc1,cu15oc1,cu16oc1;


//cycle4
//first row of m2
computation_unit cu1c2(clk, m1i1,m2c1,0,cu1oc1,f11);
computation_unit cu2c2(clk,m1i1,m2c2,0,cu2oc1,f12);
computation_unit cu3c2(clk,m1i1,m2c3,0,cu3oc1,f13);
computation_unit cu4c2(clk,m1i1,m2c4,0,cu4oc1,f14);
//assign {o1,o2,o3,o4} = {cu1co1,cu2co1,cu3co1,cu3co1}
//second row of m2
computation_unit cu5c2(clk,m1i2,m2c5,cu1oc1,cu5oc1,f21);
computation_unit cu6c2(clk, m1i2,m2c6,cu2oc1,cu6oc1,f22);
computation_unit cu7c2(clk,m1i2,m2c7,cu3oc1,cu7oc1,f23);
computation_unit cu8c2(clk,m1i2,m2c8,cu4oc1,cu8oc1,f24);
//third row of m2
computation_unit cu09c2(clk,m1i3,m2c9,cu5oc1,cu9oc1,f31);
computation_unit cu10c2(clk,m1i3,m2c10,cu6oc1,cu10oc1,f32);
computation_unit cu11c2(clk,m1i3,m2c11,cu7oc1,cu11oc1,f33);
computation_unit cu12c2(clk,m1i3,m2c12,cu8oc1,cu12oc1,f34);
//fouth row of m2
computation_unit cu15c2(clk,m1i4,m2c13,cu9oc1,cu13oc1,f41);
computation_unit cu16c2(clk,m1i4,m2c14,cu10oc1,cu14oc1,f42);
computation_unit cu17c2(clk,m1i4,m2c15,cu11oc1,cu15oc1,f43);
computation_unit cu18c2(clk,m1i4,m2c16,cu12oc1,cu16oc1,f44);

assign {o1,o2,o3,o4} = {cu13oc1,cu14oc1,cu15oc1,cu16oc1};

integer cnt =0;
always @(negedge clk)
begin
cnt = cnt + 1;
if(cnt==4)
final_out = o1;
else if(cnt==8)
final_out = final_out+ o2;
else if(cnt == 12)
final_out = final_out+ o3;
else if(cnt==16)
final_out = final_out+ o4;
end

endmodule

