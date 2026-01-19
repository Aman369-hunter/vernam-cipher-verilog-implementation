`timescale 1ns / 1ps

module Vernam_cipher(
    input [7:0] Plaintext,
    input [7:0] Key,
    output [7:0] ciphertext
    );
    wire [4:0] p;
    wire [4:0] k;
    wire [5:0] c;
    //ASCII to 0 to 25 alphabet
    assign p = Plaintext - 8'd65;
    assign k = Key - 8'd65;
    assign c = p + k;
    //conversion back to the ASCII character
    assign ciphertext =(c>=26) ? (c - 26 + 8'd65): (c + 8'd65);
endmodule
