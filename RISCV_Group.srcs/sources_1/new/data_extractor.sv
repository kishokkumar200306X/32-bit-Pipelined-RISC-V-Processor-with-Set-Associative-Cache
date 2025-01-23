`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/31/2023 09:57:06 PM
// Design Name: 
// Module Name: data_extractor
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


module data_extractor(
    input [31:0] instruction,
    output reg [31:0] imm_data
  );
  
  always @(*)
    begin
      case (instruction[6:5])
       2'b00:
          begin
            imm_data[11:0] = instruction[31:20];
          end
        2'b01:
          begin
            imm_data[11:0] = {instruction[31:25], instruction[11:7]};
          end
        2'b11:
          begin
            imm_data[11:0] = {instruction[31], instruction[7], instruction[30:25], instruction[11:8]};
          end
      endcase
      imm_data = {{52{imm_data[11]}},{imm_data[11:0]}};
    end  
  
endmodule
