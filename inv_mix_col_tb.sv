`timescale 1ns / 1ps

// Create Date: 16.02.2026 19:38:12


module inv_mix_col_tb();
reg [7:0]state[0:3][0:3];
reg [7:0]out[0:3][0:3];

integer i,j;

inv_mix_cols c(
.inv_mix_in(state),
.inv_mix_out(out)
    );
    initial begin

//    /////////////////////////////////
//    // Column 0 (AES standard test)
//    /////////////////////////////////

//    state[0][0] = 8'h8e;
//    state[0][1] = 8'h4d;
//    state[0][2] = 8'ha1;
//    state[0][3] = 8'hbc;

//    /////////////////////////////////
//    // Keep other columns zero
//    /////////////////////////////////

//    for(i=1;i<4;i=i+1) begin
//        state[i][0] = 8'h00;
//        state[i][1] = 8'h00;
//        state[i][2] = 8'h00;
//        state[i][3] = 8'h00;
//    end

//    #10;
//    // Column 0
//    state[0][0] = 8'he9;
//    state[1][0] = 8'hf7;
//    state[2][0] = 8'h4e;
//    state[3][0] = 8'hec;

//    // Column 1
//    state[0][1] = 8'h02;
//    state[1][1] = 8'h30;
//    state[2][1] = 8'h20;
//    state[3][1] = 8'hf6;

//    // Column 2
//    state[0][2] = 8'h1b;
//    state[1][2] = 8'hf2;
//    state[2][2] = 8'hcc;
//    state[3][2] = 8'hf2;

//    // Column 3
//    state[0][3] = 8'h35;
//    state[1][3] = 8'h3c;
//    state[2][3] = 8'h21;
//    state[3][3] = 8'hc7;
    
    
    // Row 0
    state[0][0] = 8'he9;
    state[0][1] = 8'hf7;
    state[0][2] = 8'h4e;
    state[0][3] = 8'hec;

    // Row 1
    state[1][0] = 8'h02;
    state[1][1] = 8'h30;
    state[1][2] = 8'h20;
    state[1][3] = 8'hf6;

    // Row 2
    state[2][0] = 8'h1b;
    state[2][1] = 8'hf2;
    state[2][2] = 8'hcc;
    state[2][3] = 8'hf2;

    // Row 3
    state[3][0] = 8'h35;
    state[3][1] = 8'h3c;
    state[3][2] = 8'h21;
    state[3][3] = 8'hc7;

    /////////////////////////////////
    // Display result
    /////////////////////////////////

    $display("Inverse MixColumn Output:");
    for(i=0;i<4;i=i+1) begin
        for(j=0;j<4;j=j+1) begin
            $display("out[%d][%d]=%h ",i,j, out[i][j]);
        end
    end

end
    

endmodule
