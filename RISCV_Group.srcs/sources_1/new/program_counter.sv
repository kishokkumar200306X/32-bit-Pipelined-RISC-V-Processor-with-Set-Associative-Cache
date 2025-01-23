`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/31/2023 10:03:48 PM
// Design Name: 
// Module Name: program_counter
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


module program_counter(
  input [31:0] PC_in,
  input clk,
  input reset,
  input stall, 
  output reg [31:0] PC_out);
  
  always @(posedge clk or posedge reset)
    begin
      if (reset==1'b1)
        begin        
          PC_out = 32'd0;
        end
      else if (stall == 1'b0) 
        begin 
          PC_out = PC_in;
        end
    end
endmodule
