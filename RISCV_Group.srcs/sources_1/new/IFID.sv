`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/31/2023 09:35:25 PM
// Design Name: 
// Module Name: IFID
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


module IFID(
    input clk,
    input reset,
    input [31:0] instruction,
    input [31:0] A, //a
    input flush, 
    input IFIDWrite, 
    output reg [31:0] inst,//instruction out,
    output reg [31:0] a_out
  );
  always @(posedge clk)
    begin
      if (reset == 1'b1 || flush == 1'b1)
        begin
          inst = 32'b0;
          a_out = 32'b0;
        end
      else if (IFIDWrite == 1'b0)
        begin
          inst = instruction;
          a_out = A;
        end
    end
endmodule
