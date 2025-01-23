`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/31/2023 12:28:09 PM
// Design Name: 
// Module Name: alu
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


module alu(
    input [31:0] a,b,
    input [3:0] ALuop,
    output reg [31:0] Result,
    output reg zero);
  
  always @(*)
    begin
      case (ALuop)
        4'b0000: Result = a & b;
        4'b0001: Result = a | b;
        4'b0010: Result = a + b;
        4'b0110: Result = a - b;
        4'b1100: Result = ~(a | b); //nor
      endcase
      if (Result == 0)
        zero = 1;
      else
        zero = 0;
    end
endmodule

