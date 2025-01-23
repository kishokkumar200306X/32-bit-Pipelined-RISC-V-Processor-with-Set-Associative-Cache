`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/31/2023 10:05:21 PM
// Design Name: 
// Module Name: registerFile
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


module registerFile(
  input clk,
  input reset,
  input [4:0] rs1,
  input [4:0] rs2,
  input [4:0] rd,
  input [31:0] writedata,
  input reg_write,
  output reg [31:0] readdata1,
  output reg[31:0] readdata2,
  output [31:0] r8,
  output [31:0] r19,
  output [31:0] r20,
  output [31:0] r21,
  output [31:0] r22
);
  integer i;
  reg [31:0] registers [31:0];
  initial
    begin
      registers[0] = 32'd0;
      registers[1] = 32'd0;
      registers[2] = 32'd0;
      registers[3] = 32'd0;
      registers[4] = 32'd0;
      registers[5] = 32'd0;
      registers[6] = 32'd0;
      registers[7] = 32'd0;
      registers[8] = 32'd0;
      registers[9] = 32'd0;
      registers[10] = 32'd0;
      registers[11] = 32'd8;
      registers[12] = 32'd0;
      registers[13] = 32'd0;
      registers[14] = 32'd0;
      registers[15] = 32'd0;
      registers[16] = 32'd0;
      registers[17] = 32'd0;
      registers[18] = 32'd0;
      registers[19] = 32'd0;
      registers[20] = 32'd0;
      registers[21] = 32'd0;
      registers[22] = 32'd0;
      registers[23] = 32'd0;
      registers[24] = 32'd0;
      registers[25] = 32'd0;
      registers[26] = 32'd0;
      registers[27] = 32'd0;
      registers[28] = 32'd0;
      registers[29] = 32'd0;
      registers[30] = 32'd0;
      registers[31] = 32'd0;
    end
  assign r8 = registers[8];
  assign r19 = registers[19];
  assign r20 = registers[20];
  assign r21 = registers[26];
  assign r22 = registers[27];
 
  always @ (*)
    begin
      if (reset == 1'b1)
        begin
          readdata1 = 32'd0;
          readdata2 = 32'd0;
        end
      else
        begin
          readdata1 = registers[rs1];
          readdata2 = registers[rs2];
        end
    end
  always@(negedge clk)
    begin
      if (reg_write == 1)
        registers[rd] = writedata;
    end
endmodule

