// Create Date: 16.02.2026 11:10:11 
module inv_sub_bytes(
input [7:0]in_sub[0:3][0:3],
output logic [7:0]out_sub[0:3][0:3]
);
genvar i,j;
generate
    for(i=0;i<4;i=i+1) begin : rows
        for(j=0;j<4;j=j+1) begin : columns
            inv_sbox inverse_sbox(
            .in(in_sub[j][i]),
            .aes_inv_sbox(out_sub[j][i])
                );
        end
    end
endgenerate

endmodule
