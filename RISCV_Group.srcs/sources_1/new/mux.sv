`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/31/2023 12:22:02 PM
// Design Name: 
// Module Name: mux
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


module mux(
  input [31:0] A,B,
  input SEL,
  output reg[31:0] Y);
  
  always @ (A or B or SEL)
    begin 
      if (SEL == 0)
        Y = A;
      else
        Y = B;
    end
endmodule

