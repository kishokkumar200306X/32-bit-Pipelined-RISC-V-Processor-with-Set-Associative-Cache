`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/31/2023 09:41:08 PM
// Design Name: 
// Module Name: ThreebyOneMux
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


module ThreebyOneMux(
    input[31:0] a,
    input[31:0] b,
    input[31:0] c,
    input [1:0] sel,
    output reg [31:0] out
  );
  always @(*)
    begin
      case(sel[1:0])
        2'b00: out = a;
        2'b01: out = b;
        2'b10: out = c;
      endcase
    end
endmodule
