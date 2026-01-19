`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2026 18:51:37
// Design Name: 
// Module Name: vernam_cipher_tb
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


module vernam_cipher_tb;
    reg [7:0] Plaintext;
    reg [7:0] Key;
    wire [7:0] Ciphertext;
    
    Vernam_cipher DUT (Plaintext, Key, Ciphertext);
    initial begin
    Plaintext="A"; Key="K"; #10;
    Plaintext="M"; Key="E"; #10;
    Plaintext="A"; Key="Y"; #10;
    Plaintext="N"; Key="K"; #10;
    end
endmodule
