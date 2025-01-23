`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/31/2023 09:59:00 PM
// Design Name: 
// Module Name: instruction_memory
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


module instruction_memory(
  input [31:0] inst_address,
  output reg [31:0] instruction);
  reg [7:0] inst_mem[87:0];
  
  initial
  
  begin
      {inst_mem[3], inst_mem[2], inst_mem[1], inst_mem[0]} = 32'h00000913;//1 //r18 = r0 + 0
      {inst_mem[7], inst_mem[6], inst_mem[5], inst_mem[4]} = 32'h00000433;//2 //r8 = r0 + r0
      {inst_mem[11], inst_mem[10], inst_mem[9], inst_mem[8]} = 32'h04b40863;//3 //beq  +80 if r8 = r11
      {inst_mem[15], inst_mem[14], inst_mem[13], inst_mem[12]} = 32'h00800eb3;//4 //r29 = r0 + r8
      {inst_mem[19], inst_mem[18], inst_mem[17], inst_mem[16]} = 32'h000409b3;//5 //r19 = r8 + r0
      {inst_mem[23], inst_mem[22], inst_mem[21], inst_mem[20]} = 32'h013989b3;//6 //r19 = r19 + r11
      {inst_mem[27], inst_mem[26], inst_mem[25], inst_mem[24]} = 32'h013989b3;//7 //r19 = r19 + r11
      {inst_mem[31], inst_mem[30], inst_mem[29], inst_mem[28]} = 32'h013989b3;//8 //r19 = r19 + r11
      {inst_mem[35], inst_mem[34], inst_mem[33], inst_mem[32]} = 32'h02be8663;//9 //beq  +12 r29 = r11
      {inst_mem[39], inst_mem[38], inst_mem[37], inst_mem[36]} = 32'h001e8e93;//10 //r29 = r29 + 1
      {inst_mem[43], inst_mem[42], inst_mem[41], inst_mem[40]} = 32'h00898993;//11 //r19 = r19 + 8
      {inst_mem[47], inst_mem[46], inst_mem[45], inst_mem[44]} = 32'h00092d03;//12 //lw x26, 0x0(x18)
      {inst_mem[51], inst_mem[50], inst_mem[49], inst_mem[48]} = 32'h0009AD83;//13 //lw x27, 0x0(x19)
      {inst_mem[55], inst_mem[54], inst_mem[53], inst_mem[52]} = 32'h01bd4463;//14 //BLT x26, x27, x8
      {inst_mem[59], inst_mem[58], inst_mem[57], inst_mem[56]} = 32'hfe0004e3;//15 //BEQ x0,x0,9
      {inst_mem[63], inst_mem[62], inst_mem[61], inst_mem[60]} = 32'h01a002b3;//16 //ADD x5, x0, x26
      {inst_mem[67], inst_mem[66], inst_mem[65], inst_mem[64]} = 32'h01b92023;//17 //SW x27, 0(x18)
      {inst_mem[71], inst_mem[70], inst_mem[69], inst_mem[68]} = 32'h0059a023;//18 //SW x5, 0(x19)
      {inst_mem[75], inst_mem[74], inst_mem[73], inst_mem[72]} = 32'hfc000ce3;//19 //BEQ x0,x0,19
      {inst_mem[79], inst_mem[78], inst_mem[77], inst_mem[76]} = 32'h00140413;//20 //ADDI x8, x8, 1
      {inst_mem[83], inst_mem[82], inst_mem[81], inst_mem[80]} = 32'h00890913;//21 //r18 = r18 + 8
      {inst_mem[87], inst_mem[86], inst_mem[85], inst_mem[84]} = 32'hfa000ae3;//22 //beq something+ 2^11 r0 = r0
  end
  always @ (inst_address)
    begin
      instruction[7:0] = inst_mem[inst_address+0];
      instruction[15:8] = inst_mem[inst_address+1];
      instruction[23:16] = inst_mem[inst_address+2];
      instruction[31:24] = inst_mem[inst_address+3];
    end
endmodule
