

// Create Date: 15.02.2026 16:18:50

module decry_with_clk(
input clk,
input [127:0]plain,
input [127:0]input_key,
output logic [127:0]cypher
    );
    integer i,j,add;
    
    logic [7:0]plain_text[0:3][0:3];
    logic [7:0]in_key[0:3][0:3];
    logic [7:0]out_cypher[0:3][0:3];
    always@(*) begin
        add=0;
        for(i=0;i<4;i=i+1) begin
            for(j=0;j<4;j=j+1) begin
                plain_text[i][j]=plain[127-(8*add) -: 8 ];
                in_key[i][j]=input_key[127-(8*add) -: 8 ];
                cypher[127-(8*add) -: 8 ] = out_cypher[i][j];
                add=add+1;
            end
        end
    end
    
    
    
    //                              for round key / key expantion
        logic [31:0]round_key[0:10][0:3];
//    logic [7:0]connect[3:0][3:0][3:0];
//    logic [7:0]inter_connect1[3:0][3:0];
//    logic [7:0]inter_connect2[3:0][3:0];
//    logic [7:0]inter_connect3[3:0][3:0];
//    logic [7:0]inter_connect4[3:0][3:0];
    
    
    
    //                  key explantion
    key_expansion k(
    .key(in_key),
    .w(round_key)
        );
//    genvar round;
//    generate
//        for(round=0;round<11;round=round+1) begin:roundsss
        
//        //                                          round 0
//            if(round==0) begin
//                add_round_key round0(
//                .in(plain_text),
//                .round_key(round_key),
//                .round(round),
//                .out(connect[round])
//                    );
//            end
        
        
//        //                                      round 1 to 10
//            else if(round >0 && round <10) begin
//                //                                 sub bytes
//                sub_byte subb(
//                .in_sub(connect[round-1]),
//                .out_sub(inter_connect1)
//                    );
                    
//                    //                            shift_rows
//                shift_rows sh(
//                .sh_in(inter_connect1),
//                .sh_out(inter_connect2)
//                    );
                    
//                    //                              mix columns
//                mix_column mixxx(
//                .mix_in(inter_connect2),
//                .mix_out(inter_connect3)
//                    );
                    
//                    //                              add round key
//                add_round_key addroundkey(
//                .in(inter_connect3),
//                .round_key(round_key),
//                .round(round),
//                .out(connect[round])
//                    );
                
//            end
            
            
//            //                               round 11
//            else if(round == 10) begin
//                //                                 sub bytes
//                sub_byte subb(
//                .in_sub(connect[round-1]),
//                .out_sub(inter_connect1)
//                    );
                    
//                    //                            shift_rows
//                shift_rows sh(
//                .sh_in(inter_connect1),
//                .sh_out(inter_connect2)
//                    );
                    
////                    //                              mix columns
////                mix_column mixxx(
////                .mix_in(inter_connect2),
////                .mix_out(inter_connect3)
////                    );
                    
////                    //                              add round key
//                add_round_key addroundkey(
//                .in(inter_connect2),
//                .round_key(round_key),
//                .round(round),
//                .out(out_cypher)
//                    );
//            end
//        end
//    endgenerate



        logic [7:0] state [0:10][0:3][0:3];
        
        genvar r;
        generate
            for (r = 10; r >= 0; r=r-1) begin: AES_ROUNDS
        
                if (r == 0) begin
                /////////////////////////   for round 0
                    logic [7:0] sb[3:0][3:0];
                    logic [7:0] sr[3:0][3:0];
                    inverse_row_shift sh_row (.in_row(state[r+1]), .out_row(sr));
                    inv_sub_bytes sub_byte (.in_sub(sr), .out_sub(sb));
                    
                    inv_add_round_key add_key (
                        .in(sb),
                        .round_key(round_key),
                        .round(r),
                        .out(state[r])
                    );
                    ///////////////////////////////
                end
        
                else if (r < 10) begin
                    logic [7:0] sb[3:0][3:0];
                    logic [7:0] sr[3:0][3:0];
                    logic [7:0] mc[3:0][3:0];
                    logic [7:0] act_mc[3:0][3:0];
                    
                    inverse_row_shift sh_row (.in_row(state[r+1]), .out_row(sr));
                    inv_sub_bytes sub_byte (.in_sub(sr), .out_sub(sb));
                   
        
                    inv_add_round_key add_key (
                        .in(sb),
                        .round_key(round_key),
                        .round(r),
                        .out(mc)
                    );
                    
                    inv_mix_cols m (.inv_mix_in(mc), .inv_mix_out(state[r]));
                end
        
                else begin  // r == 10 (final round)
                    
                    
                    ///////////////////////////////////// add it to round 0  if doesnt works 
                    inv_add_round_key add_key (
                        .in(plain_text),
                        .round_key(round_key),
                        .round(r),
                        .out(state[r])
                    );
                    /////////////////////////////////////
        
                    
                end
        
            end
        endgenerate
        
        // remove this and do normally assign 
        always_ff@(posedge clk) begin
            out_cypher = state[0];
        end
    
    
endmodule
