`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/31/2023 09:55:32 PM
// Design Name: 
// Module Name: hazard_detection_unit
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


module hazard_detection_unit(
    input Memread,
    input [31:0] inst,
    input [4:0] Rd,
    output reg stall
  );
  
  initial
    begin
      stall = 1'b0;
    end
  
  always @(*)
    begin
      if (Memread == 1'b1 && ((Rd == inst[19:15]) || (Rd == inst[24:20])))
        stall = 1'b1;
      else
        stall = 1'b0;
    end
endmodule
