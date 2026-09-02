`timescale 1ns / 1ps

// Create Date: 16.02.2026 19:21:20

module inv_mix_cols(
input [7:0]inv_mix_in[0:3][0:3],
output reg [7:0]inv_mix_out[0:3][0:3]
    );
    
reg [7:0] mix_mat [0:3][0:3];
reg [7:0] mix [0:3][0:3][0:3];
reg [7:0] b [0:3];
integer i,j,k;
bit x; // for checking multipliction 
integer m,n;

    initial begin
 
    // Row 0
    mix_mat[0][0] = 8'h0e;
    mix_mat[0][1] = 8'h0b;
    mix_mat[0][2] = 8'h0d;
    mix_mat[0][3] = 8'h09;

    // Row 1
    mix_mat[1][0] = 8'h09;
    mix_mat[1][1] = 8'h0e;
    mix_mat[1][2] = 8'h0b;
    mix_mat[1][3] = 8'h0d;

    // Row 2
    mix_mat[2][0] = 8'h0d;
    mix_mat[2][1] = 8'h09;
    mix_mat[2][2] = 8'h0e;
    mix_mat[2][3] = 8'h0b;

    // Row 3
    mix_mat[3][0] = 8'h0b;
    mix_mat[3][1] = 8'h0d;
    mix_mat[3][2] = 8'h09;
    mix_mat[3][3] = 8'h0e;
end


always @ (*)
begin
    for(i=0;i<4;i=i+1) begin
        for(j=0;j<4;j=j+1) begin
             inv_mix_out[j][i]=8'h00; 
            for(k=0;k<4;k=k+1) begin
            
            
                if(mix_mat[i][k]==8'h09) begin
                    mix[j][i][0]=shift1(inv_mix_in[j][k]);
                    mix[j][i][1]=shift1(mix[j][i][0]);
                    mix[j][i][2]=shift1(mix[j][i][1]);
                    inv_mix_out[j][i]=inv_mix_out[j][i]^mix[j][i][2]^inv_mix_in[j][k];
                    
                end
                
                else if(mix_mat[i][k]==8'h0b) begin //0000 1011
                    b[0]=8'h00;
                    mix[j][i][0]=shift1(inv_mix_in[j][k]);
                    b[0]=mix[j][i][0];
                    mix[j][i][1]=shift1(mix[j][i][0]);
                    mix[j][i][2]=shift1(mix[j][i][1]);
                    inv_mix_out[j][i]=inv_mix_out[j][i]^mix[j][i][2]^inv_mix_in[j][k]^b[0];
                    
                    
                end
                
                
                else if(mix_mat[i][k]==8'h0d) begin // 0000 1101
                    b[1]=8'h00;
                    mix[j][i][0]=shift1(inv_mix_in[j][k]);
                    mix[j][i][1]=shift1(mix[j][i][0]);
                    b[1]=mix[j][i][1];
                    mix[j][i][2]=shift1(mix[j][i][1]);
                    inv_mix_out[j][i]=inv_mix_out[j][i]^mix[j][i][2]^inv_mix_in[j][k]^b[1]; 
                    
                    
                end
                
               else begin                       // 00001110
                    b[2]=8'h00;
                    b[3]=8'h00;
                    mix[j][i][0]=shift1(inv_mix_in[j][k]);
                    b[2]=mix[j][i][0];
                    mix[j][i][1]=shift1(mix[j][i][0]);
                    b[3]=mix[j][i][1];
                    mix[j][i][2]=shift1(mix[j][i][1]);
                    inv_mix_out[j][i]=inv_mix_out[j][i]^mix[j][i][2]^b[2]^b[3]; 

                end
            end
        end
    end
end

////////////////////////////////////////////////////////
function [7:0] shift1;
    input [7:0] data;
    begin
        if(data[7] == 1'b1)
            shift1 = (data << 1) ^ 8'h1b;
        else
            shift1 = data << 1;
    end
endfunction
endmodule
