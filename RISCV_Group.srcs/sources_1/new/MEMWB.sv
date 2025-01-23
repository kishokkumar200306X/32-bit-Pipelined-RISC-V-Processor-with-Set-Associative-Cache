`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/31/2023 09:38:35 PM
// Design Name: 
// Module Name: MEMWB
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


module MEMWB(
  input clk,reset,
  input [31:0] read_data_in,
  input [31:0] result_alu_in, //2 bit 2by1 mux input b
  input [4:0]Rd_in, //EX MEM output
  input memtoreg_in, regwrite_in, //ex mem output as mem wb inputs
  output reg [31:0] readdata, //1bit
  output reg [31:0] result_alu_out,//1bit
  output reg [4:0] rd,
  output reg Memtoreg, Regwrite
);
  
  always @(posedge clk)
    begin
      if (reset == 1'b1)
        begin
          readdata = 31'b0;
          result_alu_out = 31'b0;
          rd = 5'b0;
          Memtoreg = 1'b0;
          Regwrite = 1'b0;
          
        end
      else
        begin
         readdata = read_data_in;
          result_alu_out = result_alu_in;
          rd = Rd_in;
          Memtoreg = memtoreg_in;
          Regwrite = regwrite_in;
        end
    end
endmodule
