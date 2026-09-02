`timescale 1ns / 1ps
 
// Create Date: 16.02.2026 10:58:20

module inv_sbox_tb();
logic [7:0]state[0:3][0:3];
logic [7:0]out[0:3][0:3];

integer x,y;

inv_sub_bytes dut(
        .in_sub(state),
        .out_sub(out)
            );

initial begin
//    // Column 0
//    state[0][0] = 8'h87;
//    state[1][0] = 8'hEC;
//    state[2][0] = 8'h4A;
//    state[3][0] = 8'h8C;

//    // Column 1
//    state[0][1] = 8'hF2;
//    state[1][1] = 8'h6E;
//    state[2][1] = 8'hC3;
//    state[3][1] = 8'hD8;

//    // Column 2
//    state[0][2] = 8'h4D;
//    state[1][2] = 8'h4C;
//    state[2][2] = 8'h46;
//    state[3][2] = 8'h95;

//    // Column 3
//    state[0][3] = 8'h97;
//    state[1][3] = 8'h90;
//    state[2][3] = 8'hE7;
//    state[3][3] = 8'hA6;
    // Row 0
    state[0][0] = 8'h7a;
    state[0][1] = 8'h9f;
    state[0][2] = 8'h10;
    state[0][3] = 8'h27;

    // Row 1
    state[1][0] = 8'h89;
    state[1][1] = 8'hd5;
    state[1][2] = 8'hf5;
    state[1][3] = 8'h0b;

    // Row 2
    state[2][0] = 8'h2b;
    state[2][1] = 8'hef;
    state[2][2] = 8'hfd;
    state[2][3] = 8'h9f;

    // Row 3
    state[3][0] = 8'h3d;
    state[3][1] = 8'hca;
    state[3][2] = 8'h4e;
    state[3][3] = 8'ha7;
        #10;
    
        for(x=0;x<4;x=x+1) begin
            for(y=0;y<4;y=y+1) begin
                $display("out[%d][%d] = %h",x,y,out[x][y]);
                #10;
            end
        end
    end
endmodule
