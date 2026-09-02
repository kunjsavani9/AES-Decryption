`timescale 1ns / 1ps

// Create Date: 16.02.2026 10:32:52

module inverse_row_shift(
input [7:0]in_row[0:3][0:3],
output logic [7:0]out_row[0:3][0:3]
    );
    
    always @(*) begin
        out_row[0][0]=in_row[0][0];
        out_row[1][0]=in_row[1][0];
        out_row[2][0]=in_row[2][0];
        out_row[3][0]=in_row[3][0];
        
        out_row[0][1]=in_row[3][1];
        out_row[1][1]=in_row[0][1];
        out_row[2][1]=in_row[1][1];
        out_row[3][1]=in_row[2][1];
        
        out_row[0][2]=in_row[2][2];
        out_row[1][2]=in_row[3][2];
        out_row[2][2]=in_row[0][2];
        out_row[3][2]=in_row[1][2];
        
        out_row[0][3]=in_row[1][3];
        out_row[1][3]=in_row[2][3];
        out_row[2][3]=in_row[3][3];
        out_row[3][3]=in_row[0][3];
        
        
    end
    
endmodule
