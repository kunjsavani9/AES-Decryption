`timescale 1ns / 1ps

// Create Date: 02.03.2026 19:20:42

module inv_add_round_key_tb();

reg [7:0]in[0:3][0:3];
reg [31:0]round_key[0:10][0:3];
reg [3:0]round;
reg [7:0]out[0:3][0:3];
logic [7:0]in_key[0:3][0:3];
integer i,j,add;
reg [127:0]input_key;

key_expansion k(
    .key(in_key),
    .w(round_key)
        );
        
        always@(*) begin
        add=0;
        for(i=0;i<4;i=i+1) begin
            for(j=0;j<4;j=j+1) begin
//                plain_text[i][j]=plain[127-(8*add) -: 8 ];
                in_key[i][j]=input_key[127-(8*add) -: 8 ];
//                cypher[127-(8*add) -: 8 ] = out_cypher[i][j];
                add=add+1;
                end
            end
        end
        
        inv_add_round_key key(
        .in(in),
        .round_key(round_key),
        .round(round),
        .out(out)
            );
            
            initial begin                   
                input_key=128'h000102030405060708090a0b0c0d0e0f;
                round=4'b1010;
                
                // Row 0
//    in[0][0] = 8'h69;
//    in[0][1] = 8'h6a;
//    in[0][2] = 8'hd8;
//    in[0][3] = 8'h70;

//    // Row 1
//    in[1][0] = 8'hc4;
//    in[1][1] = 8'h7b;
//    in[1][2] = 8'hcd;
//    in[1][3] = 8'hb4;

//    // Row 2
//    in[2][0] = 8'he0;
//    in[2][1] = 8'h04;
//    in[2][2] = 8'hb7;
//    in[2][3] = 8'hc5;

//    // Row 3
//    in[3][0] = 8'hd8;
//    in[3][1] = 8'h30;
//    in[3][2] = 8'h80;
//    in[3][3] = 8'h5a;


// Column 0
    in[0][0] = 8'h69;
    in[0][1] = 8'hc4;
    in[0][2] = 8'he0;
    in[0][3] = 8'hd8;

    // Column 1
    in[1][0] = 8'h6a;
    in[1][1] = 8'h7b;
    in[1][2] = 8'h04;
    in[1][3] = 8'h30;
    
    // Column 2
    in[2][0] = 8'hd8;
    in[2][1] = 8'hcd;
    in[2][2] = 8'hb7;
    in[2][3] = 8'h80;

    // Column 3
    in[3][0] = 8'h70;
    in[3][1] = 8'hb4;
    in[3][2] = 8'hc5;
    in[3][3] = 8'h5a;
            end
endmodule
