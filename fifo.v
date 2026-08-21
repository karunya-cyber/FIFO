`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.08.2026 19:03:46
// Design Name: 
// Module Name: fifo
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


module fifo(input clk,rst,input [7:0]din,w,r,output reg[7:0] do,reg full,reg empty

 );
    reg [7:0]m[0:7];
    reg [7:0]c;
    reg [2:0]wp;
    reg[2:0] rp;
    always @(posedge clk ) begin
    if(rst)begin
    do<=8'd0;
    full<=1'd0;
    empty<=1'd1;
  c<=8'd0;
  wp<=3'd0;
  rp<=3'd0;    
    end
    else
    if(w&&!full) begin
    m[wp]<=din;
    wp<=wp+1;
    c<=c+1;
    end
    else
    if(r&&!empty) begin
    do<=m[rp];
    rp=rp+1;
    c<=c-1;
    end
    full<=(c==7);
    empty<=(c==0);
    end
endmodule
