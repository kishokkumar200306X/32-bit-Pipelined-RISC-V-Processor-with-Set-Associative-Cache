`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/31/2023 09:48:26 PM
// Design Name: 
// Module Name: data_memory
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


module data_memory(
  input [31:0] write_data,
  input [31:0] address,
  input memorywrite, clk,memoryread,
  output reg [31:0] read_data,
  output [31:0] element1,
  output [31:0] element2,
  output [31:0] element3,
  output [31:0] element4);
  
  reg [7:0] mem [31:0]; //memory array
  integer i;
  initial
    begin
      for (i=0; i<32; i=i+1)
        begin
          mem[i] = 0;
    
        end
      mem[0] = 8'd1;
      mem[8] = 8'd2;
      mem[16] = 8'd3;
      mem[24] = 8'd4;
    end
  
  
  assign element1 = {mem[7],mem[6],mem[5],mem[4],mem[3],mem[2],mem[1],mem[0]};
  assign element2 = {mem[15],mem[14],mem[13],mem[12],mem[11],mem[10],mem[9],mem[8]};
  assign element3 = {mem[23],mem[22],mem[21],mem[20],mem[19],mem[18],mem[17],mem[16]};
  assign element4 = {mem[31],mem[30],mem[29],mem[28],mem[27],mem[26],mem[25],mem[24]};
  
  always @ (*)
    begin
      if (memoryread)
        begin
          read_data[7:0] = mem[address+0];
          read_data[15:8] = mem[address+1];
          read_data[23:16] = mem[address+2];
          read_data[31:24] = mem[address+3];
        end
    end
  always @(posedge clk)
    begin
      if (memorywrite)
        begin
          mem[address] = write_data[7:0];
          mem[address+1] = write_data[15:8];
          mem[address+2] = write_data[23:16];
          mem[address+3] = write_data[31:24];
        end
    end
endmodule
