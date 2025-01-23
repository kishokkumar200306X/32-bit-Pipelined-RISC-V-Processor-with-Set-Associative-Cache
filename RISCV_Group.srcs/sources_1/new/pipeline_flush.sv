`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/31/2023 10:02:41 PM
// Design Name: 
// Module Name: pipeline_flush
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


module pipeline_flush(
    input branch,
    output reg flush
  );
  
  initial
    begin
      flush = 1'b0;
    end
  
  always @(*)
    begin
      if (branch == 1'b1)
        flush = 1'b1;
      else
        flush = 1'b0;
    end
  
endmodule
