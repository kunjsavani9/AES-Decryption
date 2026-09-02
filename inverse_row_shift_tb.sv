`timescale 1ns / 1ps

// Create Date: 16.02.2026 10:39:37


module inverse_row_shift_tb();

logic [7:0]in[0:3][0:3];
logic [7:0]out[0:3][0:3];


inverse_row_shift irs_dut(
.in_row(in),
.out_row(out)
    ); 
    
    integer i,j;
    
    initial begin
    // Row 0
    in[0][0] = 8'h7a;
    in[0][1] = 8'hd5;
    in[0][2] = 8'hfd;
    in[0][3] = 8'ha7;

    // Row 1
    in[1][0] = 8'h89;
    in[1][1] = 8'hef;
    in[1][2] = 8'h4e;
    in[1][3] = 8'h27;

    // Row 2
    in[2][0] = 8'h2b;
    in[2][1] = 8'hca;
    in[2][2] = 8'h10;
    in[2][3] = 8'h0b;

    // Row 3
    in[3][0] = 8'h3d;
    in[3][1] = 8'h9f;
    in[3][2] = 8'hf5;
    in[3][3] = 8'h9f;
    
        for(i=0;i<4;i=i+1) begin
            for(j=0;j<4;j=j+1) begin
                $display("out[%d][%d]",i,j,out[i][j]);
                #10;
            end
        end
    end
endmodule
