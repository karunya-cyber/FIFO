`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.08.2026 19:42:07
// Design Name: 
// Module Name: fifo_tb
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


module fifo_tb(

    );
    reg clk;
    reg rst;
    reg [7:0]din;
    reg w;
    reg r;
    wire [7:0]do;
    wire full;
    wire empty;
    
    fifo dut(
          .clk(clk),
          .rst(rst),
          .din(din),
          .w(w),
          .r(r), 
          .do(do),
          .full(full),
          .empty(empty)
          ); 
          always #5 clk=~clk;
          initial begin
          clk =0;
          rst=1;
          din=0;
          w=0;
          r=0;
          #30;
          rst=0;
          #10;
          din=8'h20;
           w=1;
              #10;
          din =8'h24;
           w=1;
           #10;
          
          din =8'h44;
           w=1;
           #10;
          din =8'h88;
           w=1;
           #10;
          din =8'h99;
          w=1;
          #10; 
          din =8'hbb;
          w=1;
          #10;
          din =8'h94;
          w=1;
          #10;
          din =8'h12;
          w=1;
          #10;
          w=0;
          #20;
          r=1'b1;
          #10;
          r=1'b1;
           #10;
          r=1'b1;
           #10;
          r=1'b1;
           #10;
          r=1'b1;
          #10;
          r=1'b1;
           #10;
           r=1'b1;
           #10;
            r=1'b1;
           #10;
//            r=1'b1;
//           #10; 
          r=0;
          #20;
           $finish;
       end
endmodule