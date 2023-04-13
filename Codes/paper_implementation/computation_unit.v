`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.04.2023 19:38:35
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



module computation_unit(clk,m1x,m2x,c1,co1,f);
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

/*always @(posedge clk)
begin
    fnew = {f,f,f,f,f,f,f,f};
    en = (fnew & m2);
end*/


always @(posedge clk)
begin

    fnew = {f,f,f,f,f,f,f,f};
    en = (fnew & m2x);
    /* USING SEQUENTIAL PROP
    m1[0]=m1a;
    m1[1]=m1b;
    m1[2]=m1c;
    m1[3]=m1d;
    c[0]=c1;
    c[1]=c2;
    c[2]=c3;
    c[3]=c4;
    */
    sout = m2x && 1'b1;
    //sout2 = m1x && 1'b1;
    sout = {sout[0],sout[0], sout[0], sout[0], sout[0], sout[0], sout[0], sout[0]};
    //sout = {sout[0],sout[0], sout[0], sout[0], sout[0], sout[0], sout[0], sout[0]};
    pm1am2 = m1x * en;
    
    /*
    pm1bm2 = m1b * en;
    pm1cm2 = m1c * en;
    pm1dm2 = m1d * en;
    */
    
    co1 = (sout & pm1am2) + c1;
    
    /*
    co2 = (sout & pm1bm2) + c2;
    co3 = (sout & pm1cm2) + c3;
    co4 = (sout & pm1dm2) + c4;
    */
    
    /*
    co1 <= (sout & pm1am2) + c1;
    co2 <= (sout & pm1bm2) + c2;
    co3 <= (sout & pm1cm2) + c3;
    co4 <= (sout & pm1dm2) + c4;
    */
    /*
    pm1am2 <= m1a * en;
    pm1bm2 <= m1b * en;
    pm1cm2 <= m1c * en;
    pm1dm2 <= m1d * en;
    */
/* USING SEQUENTIAL PROPAGATION
    pm1m2 <= m1[i] * en;
    co <= (sout & pm1m2) + c[i];
if(i<=3)
begin
if(i==0)
//pm1m2 <= m1[i] * en;
//co <= (sout & pm1m2) + c[i];
co1=co;
else if(i==1)
//pm1m2 <= m1[i] * en;
//co <= (sout & pm1m2) + c[i];
co2=co;
else if(i==2)
//pm1m2 <= m1[i] * en;
//co <= (sout & pm1m2) + c[i];
co3=co;
else if(i==3)
//pm1m2 <= m1[i] * en;
//co <= (sout & pm1m2) + c[i];
co4=co;
end
i=i+1;
*/

/* USING MUXes
//if(m2==0)
//begin
//co1=c1;
//co2=c2;
//co3=c3;
//co4=c4;
//end
//else
//begin
//pm1am2=m1a*m2;
//pm1bm2=m1b*m2;
//pm1cm2=m1c*m2;
//pm1dm2=m1d*m2;
//co1=pm1am2+c1;
//co2=pm1bm2+c2;
//co3=pm1cm2+c3;
//co4=pm1dm2+c4;
//end
*/


end



/*
always @(posedge clk)
begin
    
    co1 = (m1x * m2x) + c1;

end
*/

endmodule
