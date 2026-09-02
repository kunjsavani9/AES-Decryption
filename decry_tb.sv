`timescale 1ns / 1ps

// Create Date: 17.02.2026 15:17:09

module decry_tb();

logic [127:0]plain;
logic [127:0]input_key;
logic [127:0]cypher;



decry dut(
.plain(plain),
.input_key(input_key),
.cypher(cypher)
    );
    
    initial begin
        $display("t=%t",$time);
//        plain=128'h69c4e0d86a7b0430d8cdb78070b4c55a;
          plain=128'h9b82998964728141405e23dd9f1dd01b;         
        input_key=128'h000102030405060708090a0b0c0d0e0f;

        #10;
        $display("chypher = %h    t=%t",cypher,$time);
        
        
    end
endmodule



