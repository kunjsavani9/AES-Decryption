`timescale 1ns / 1ps

// Create Date: 17.02.2026 15:17:09

module decry_wiht_clk_tb();

logic [127:0]plain;
logic [127:0]input_key;
logic [127:0]cypher;
logic clk;



decry_with_clk dut(
.clk(clk),
.plain(plain),
.input_key(input_key),
.cypher(cypher)
    );
    
    initial begin
        plain=128'h69c4e0d86a7b0430d8cdb78070b4c55a;
                   
        input_key=128'h000102030405060708090a0b0c0d0e0f;

        clk = 1'b0;
        #10;
        $display("chypher = %h",cypher);
    end
    
    always #5 clk = ~clk;
endmodule



