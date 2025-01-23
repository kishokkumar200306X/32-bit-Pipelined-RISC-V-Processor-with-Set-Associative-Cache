`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/31/2023 10:27:49 PM
// Design Name: 
// Module Name: tb
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


module tb();
  reg clk, reset;
  wire [31:0] element1;
  wire [31:0] element2;
  wire [31:0] element3;
  wire [31:0] element4;
  wire stall;
  wire flush;
  
  RISC_V_Processor r1
  (
    .clk(clk),
    .reset(reset),
    .element1(element1),
    .element2(element2),
    .element3(element3),
    .element4(element4),
    .stall(stall),
    .flush(flush)
  );
  
  initial 
    begin
      
      $dumpfile("dump.vcd");
      $dumpvars(1, tb);
		
      clk = 1'b0;
      reset = 1'b1;
      
      #7 
      reset = 1'b0;
      #7000
      $finish;
      
    end
  
  always
    begin
      #5
      clk = ~clk;
    end
endmodule
