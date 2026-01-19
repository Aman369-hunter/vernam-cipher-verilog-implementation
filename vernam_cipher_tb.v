`timescale 1ns / 1ps



module vernam_cipher_tb;
    reg [7:0] Plaintext;
    reg [7:0] Key;
    wire [7:0] Ciphertext;
         // positional mapping
    Vernam_cipher DUT (Plaintext, Key, Ciphertext);
    initial begin
        //Taking test vectors and Key as a "key"
    Plaintext="A"; Key="K"; #10;
    Plaintext="M"; Key="E"; #10;
    Plaintext="A"; Key="Y"; #10;
    Plaintext="N"; Key="K"; #10;
    end
endmodule
