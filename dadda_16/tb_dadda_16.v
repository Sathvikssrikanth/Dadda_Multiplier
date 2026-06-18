`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2026 22:35:17
// Design Name: 
// Module Name: tb_dadda_16
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
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.01.2026 00:22:32
// Design Name: 
// Module Name: dadda_mult_tb
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

module tb_dadda_16;

  reg  [15:0] a;
  reg  [15:0] b;
  wire [31:0] y;

  // DUT
  dadda_16 dut (
    .a(a),
    .b(b),
    .y(y)
  );

   initial begin
  
        a = 16'b1111111111111011;    b = 16'b0000000000001100;    #20;   // -5 * 12
        a = 16'b1111111111111101;    b = 16'b0000000000000101;    #20;   // -3 * 5
        a = 16'b1111111111110110;    b = 16'b1111111111111001;    #20;   // -10 * -7
        a = 16'b0000000000001000;    b = 16'b1111111111111100;    #20;   // 8 * -4
        a = 16'b1111111110000000;    b = 16'b0000000000000010;    #20;   // -128 * 2
        a = 16'b0111111110000000;    b = 16'b0000000100000010;    #20;   // 32640 * 258
        a = 16'b0111111111111111;    b = 16'b0111111111111111;    #20;   // 32640 * 258

        $display("Testbench complete.");
        #20;
        $finish;
    end
  
  initial begin
       $dumpfile("dadda_16.vcd");
       $dumpvars(1, tb_dadda_16);
  end


endmodule

