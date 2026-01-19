`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2026 18:41:27
// Design Name: 
// Module Name: Vernam_cipher
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


module Vernam_cipher(
    input [7:0] Plaintext,
    input [7:0] Key,
    output [7:0] ciphertext
    );
    wire [4:0] p;
    wire [4:0] k;
    wire [5:0] c;
    
    assign p = Plaintext - 8'd65;
    assign k = Key - 8'd65;
    assign c = p + k;
    
    assign ciphertext =(c>=26) ? (c - 26 + 8'd65): (c + 8'd65);
endmodule
