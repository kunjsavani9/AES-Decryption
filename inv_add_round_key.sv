`timescale 1ns / 1ps

// Create Date: 17.02.2026 15:00:58

module inv_add_round_key(
input [7:0]in[0:3][0:3],
input [31:0]round_key[0:10][0:3],
input [3:0]round,
output reg [7:0]out[0:3][0:3]
    );
    reg [7:0]in_transpose[0:3][0:3];
    integer i,m,n;
    always @ (*) begin
            for(i=0;i<4;i=i+1) begin
            {out[i][0],out[i][1],out[i][2],out[i][3]}= {in[i][0],in[i][1],in[i][2],in[i][3]} ^ round_key[round][i];
            end
    end

    // for good indexing
    always@(*) begin
    for(m=0;m<4;m=m+1) begin
        for(n=0;n<4;n=n+1)
            in_transpose[m][n]=in[n][m];
        end
    end
endmodule

