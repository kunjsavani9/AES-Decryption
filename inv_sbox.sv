`timescale 1ns / 1ps
 
// Create Date: 16.02.2026 10:55:29

module inv_sbox(
input  logic [7:0] in,
output logic [7:0] aes_inv_sbox
    );

always @(*) begin
    case (in)

        8'h00: aes_inv_sbox = 8'h52;  8'h01: aes_inv_sbox = 8'h09;
        8'h02: aes_inv_sbox = 8'h6A;  8'h03: aes_inv_sbox = 8'hD5;
        8'h04: aes_inv_sbox = 8'h30;  8'h05: aes_inv_sbox = 8'h36;
        8'h06: aes_inv_sbox = 8'hA5;  8'h07: aes_inv_sbox = 8'h38;
        8'h08: aes_inv_sbox = 8'hBF;  8'h09: aes_inv_sbox = 8'h40;
        8'h0A: aes_inv_sbox = 8'hA3;  8'h0B: aes_inv_sbox = 8'h9E;
        8'h0C: aes_inv_sbox = 8'h81;  8'h0D: aes_inv_sbox = 8'hF3;
        8'h0E: aes_inv_sbox = 8'hD7;  8'h0F: aes_inv_sbox = 8'hFB;

        8'h10: aes_inv_sbox = 8'h7C;  8'h11: aes_inv_sbox = 8'hE3;
        8'h12: aes_inv_sbox = 8'h39;  8'h13: aes_inv_sbox = 8'h82;
        8'h14: aes_inv_sbox = 8'h9B;  8'h15: aes_inv_sbox = 8'h2F;
        8'h16: aes_inv_sbox = 8'hFF;  8'h17: aes_inv_sbox = 8'h87;
        8'h18: aes_inv_sbox = 8'h34;  8'h19: aes_inv_sbox = 8'h8E;
        8'h1A: aes_inv_sbox = 8'h43;  8'h1B: aes_inv_sbox = 8'h44;
        8'h1C: aes_inv_sbox = 8'hC4;  8'h1D: aes_inv_sbox = 8'hDE;
        8'h1E: aes_inv_sbox = 8'hE9;  8'h1F: aes_inv_sbox = 8'hCB;

        8'h20: aes_inv_sbox = 8'h54;  8'h21: aes_inv_sbox = 8'h7B;
        8'h22: aes_inv_sbox = 8'h94;  8'h23: aes_inv_sbox = 8'h32;
        8'h24: aes_inv_sbox = 8'hA6;  8'h25: aes_inv_sbox = 8'hC2;
        8'h26: aes_inv_sbox = 8'h23;  8'h27: aes_inv_sbox = 8'h3D;
        8'h28: aes_inv_sbox = 8'hEE;  8'h29: aes_inv_sbox = 8'h4C;
        8'h2A: aes_inv_sbox = 8'h95;  8'h2B: aes_inv_sbox = 8'h0B;
        8'h2C: aes_inv_sbox = 8'h42;  8'h2D: aes_inv_sbox = 8'hFA;
        8'h2E: aes_inv_sbox = 8'hC3;  8'h2F: aes_inv_sbox = 8'h4E;

        8'h30: aes_inv_sbox = 8'h08;  8'h31: aes_inv_sbox = 8'h2E;
        8'h32: aes_inv_sbox = 8'hA1;  8'h33: aes_inv_sbox = 8'h66;
        8'h34: aes_inv_sbox = 8'h28;  8'h35: aes_inv_sbox = 8'hD9;
        8'h36: aes_inv_sbox = 8'h24;  8'h37: aes_inv_sbox = 8'hB2;
        8'h38: aes_inv_sbox = 8'h76;  8'h39: aes_inv_sbox = 8'h5B;
        8'h3A: aes_inv_sbox = 8'hA2;  8'h3B: aes_inv_sbox = 8'h49;
        8'h3C: aes_inv_sbox = 8'h6D;  8'h3D: aes_inv_sbox = 8'h8B;
        8'h3E: aes_inv_sbox = 8'hD1;  8'h3F: aes_inv_sbox = 8'h25;

        8'h40: aes_inv_sbox = 8'h72;  8'h41: aes_inv_sbox = 8'hF8;
        8'h42: aes_inv_sbox = 8'hF6;  8'h43: aes_inv_sbox = 8'h64;
        8'h44: aes_inv_sbox = 8'h86;  8'h45: aes_inv_sbox = 8'h68;
        8'h46: aes_inv_sbox = 8'h98;  8'h47: aes_inv_sbox = 8'h16;
        8'h48: aes_inv_sbox = 8'hD4;  8'h49: aes_inv_sbox = 8'hA4;
        8'h4A: aes_inv_sbox = 8'h5C;  8'h4B: aes_inv_sbox = 8'hCC;
        8'h4C: aes_inv_sbox = 8'h5D;  8'h4D: aes_inv_sbox = 8'h65;
        8'h4E: aes_inv_sbox = 8'hB6;  8'h4F: aes_inv_sbox = 8'h92;

        8'h50: aes_inv_sbox = 8'h6C;  8'h51: aes_inv_sbox = 8'h70;
        8'h52: aes_inv_sbox = 8'h48;  8'h53: aes_inv_sbox = 8'h50;
        8'h54: aes_inv_sbox = 8'hFD;  8'h55: aes_inv_sbox = 8'hED;
        8'h56: aes_inv_sbox = 8'hB9;  8'h57: aes_inv_sbox = 8'hDA;
        8'h58: aes_inv_sbox = 8'h5E;  8'h59: aes_inv_sbox = 8'h15;
        8'h5A: aes_inv_sbox = 8'h46;  8'h5B: aes_inv_sbox = 8'h57;
        8'h5C: aes_inv_sbox = 8'hA7;  8'h5D: aes_inv_sbox = 8'h8D;
        8'h5E: aes_inv_sbox = 8'h9D;  8'h5F: aes_inv_sbox = 8'h84;

        8'h60: aes_inv_sbox = 8'h90;  8'h61: aes_inv_sbox = 8'hD8;
        8'h62: aes_inv_sbox = 8'hAB;  8'h63: aes_inv_sbox = 8'h00;
        8'h64: aes_inv_sbox = 8'h8C;  8'h65: aes_inv_sbox = 8'hBC;
        8'h66: aes_inv_sbox = 8'hD3;  8'h67: aes_inv_sbox = 8'h0A;
        8'h68: aes_inv_sbox = 8'hF7;  8'h69: aes_inv_sbox = 8'hE4;
        8'h6A: aes_inv_sbox = 8'h58;  8'h6B: aes_inv_sbox = 8'h05;
        8'h6C: aes_inv_sbox = 8'hB8;  8'h6D: aes_inv_sbox = 8'hB3;
        8'h6E: aes_inv_sbox = 8'h45;  8'h6F: aes_inv_sbox = 8'h06;

        8'h70: aes_inv_sbox = 8'hD0;  8'h71: aes_inv_sbox = 8'h2C;
        8'h72: aes_inv_sbox = 8'h1E;  8'h73: aes_inv_sbox = 8'h8F;
        8'h74: aes_inv_sbox = 8'hCA;  8'h75: aes_inv_sbox = 8'h3F;
        8'h76: aes_inv_sbox = 8'h0F;  8'h77: aes_inv_sbox = 8'h02;
        8'h78: aes_inv_sbox = 8'hC1;  8'h79: aes_inv_sbox = 8'hAF;
        8'h7A: aes_inv_sbox = 8'hBD;  8'h7B: aes_inv_sbox = 8'h03;
        8'h7C: aes_inv_sbox = 8'h01;  8'h7D: aes_inv_sbox = 8'h13;
        8'h7E: aes_inv_sbox = 8'h8A;  8'h7F: aes_inv_sbox = 8'h6B;

        8'h80: aes_inv_sbox = 8'h3A;  8'h81: aes_inv_sbox = 8'h91;
        8'h82: aes_inv_sbox = 8'h11;  8'h83: aes_inv_sbox = 8'h41;
        8'h84: aes_inv_sbox = 8'h4F;  8'h85: aes_inv_sbox = 8'h67;
        8'h86: aes_inv_sbox = 8'hDC;  8'h87: aes_inv_sbox = 8'hEA;
        8'h88: aes_inv_sbox = 8'h97;  8'h89: aes_inv_sbox = 8'hF2;
        8'h8A: aes_inv_sbox = 8'hCF;  8'h8B: aes_inv_sbox = 8'hCE;
        8'h8C: aes_inv_sbox = 8'hF0;  8'h8D: aes_inv_sbox = 8'hB4;
        8'h8E: aes_inv_sbox = 8'hE6;  8'h8F: aes_inv_sbox = 8'h73;

        8'h90: aes_inv_sbox = 8'h96;  8'h91: aes_inv_sbox = 8'hAC;
        8'h92: aes_inv_sbox = 8'h74;  8'h93: aes_inv_sbox = 8'h22;
        8'h94: aes_inv_sbox = 8'hE7;  8'h95: aes_inv_sbox = 8'hAD;
        8'h96: aes_inv_sbox = 8'h35;  8'h97: aes_inv_sbox = 8'h85;
        8'h98: aes_inv_sbox = 8'hE2;  8'h99: aes_inv_sbox = 8'hF9;
        8'h9A: aes_inv_sbox = 8'h37;  8'h9B: aes_inv_sbox = 8'hE8;
        8'h9C: aes_inv_sbox = 8'h1C;  8'h9D: aes_inv_sbox = 8'h75;
        8'h9E: aes_inv_sbox = 8'hDF;  8'h9F: aes_inv_sbox = 8'h6E;

        8'hA0: aes_inv_sbox = 8'h47;  8'hA1: aes_inv_sbox = 8'hF1;
        8'hA2: aes_inv_sbox = 8'h1A;  8'hA3: aes_inv_sbox = 8'h71;
        8'hA4: aes_inv_sbox = 8'h1D;  8'hA5: aes_inv_sbox = 8'h29;
        8'hA6: aes_inv_sbox = 8'hC5;  8'hA7: aes_inv_sbox = 8'h89;
        8'hA8: aes_inv_sbox = 8'h6F;  8'hA9: aes_inv_sbox = 8'hB7;
        8'hAA: aes_inv_sbox = 8'h62;  8'hAB: aes_inv_sbox = 8'h0E;
        8'hAC: aes_inv_sbox = 8'hAA;  8'hAD: aes_inv_sbox = 8'h18;
        8'hAE: aes_inv_sbox = 8'hBE;  8'hAF: aes_inv_sbox = 8'h1B;

        8'hB0: aes_inv_sbox = 8'hFC;  8'hB1: aes_inv_sbox = 8'h56;
        8'hB2: aes_inv_sbox = 8'h3E;  8'hB3: aes_inv_sbox = 8'h4B;
        8'hB4: aes_inv_sbox = 8'hC6;  8'hB5: aes_inv_sbox = 8'hD2;
        8'hB6: aes_inv_sbox = 8'h79;  8'hB7: aes_inv_sbox = 8'h20;
        8'hB8: aes_inv_sbox = 8'h9A;  8'hB9: aes_inv_sbox = 8'hDB;
        8'hBA: aes_inv_sbox = 8'hC0;  8'hBB: aes_inv_sbox = 8'hFE;
        8'hBC: aes_inv_sbox = 8'h78;  8'hBD: aes_inv_sbox = 8'hCD;
        8'hBE: aes_inv_sbox = 8'h5A;  8'hBF: aes_inv_sbox = 8'hF4;

        8'hC0: aes_inv_sbox = 8'h1F;  8'hC1: aes_inv_sbox = 8'hDD;
        8'hC2: aes_inv_sbox = 8'hA8;  8'hC3: aes_inv_sbox = 8'h33;
        8'hC4: aes_inv_sbox = 8'h88;  8'hC5: aes_inv_sbox = 8'h07;
        8'hC6: aes_inv_sbox = 8'hC7;  8'hC7: aes_inv_sbox = 8'h31;
        8'hC8: aes_inv_sbox = 8'hB1;  8'hC9: aes_inv_sbox = 8'h12;
        8'hCA: aes_inv_sbox = 8'h10;  8'hCB: aes_inv_sbox = 8'h59;
        8'hCC: aes_inv_sbox = 8'h27;  8'hCD: aes_inv_sbox = 8'h80;
        8'hCE: aes_inv_sbox = 8'hEC;  8'hCF: aes_inv_sbox = 8'h5F;

        8'hD0: aes_inv_sbox = 8'h60;  8'hD1: aes_inv_sbox = 8'h51;
        8'hD2: aes_inv_sbox = 8'h7F;  8'hD3: aes_inv_sbox = 8'hA9;
        8'hD4: aes_inv_sbox = 8'h19;  8'hD5: aes_inv_sbox = 8'hB5;
        8'hD6: aes_inv_sbox = 8'h4A;  8'hD7: aes_inv_sbox = 8'h0D;
        8'hD8: aes_inv_sbox = 8'h2D;  8'hD9: aes_inv_sbox = 8'hE5;
        8'hDA: aes_inv_sbox = 8'h7A;  8'hDB: aes_inv_sbox = 8'h9F;
        8'hDC: aes_inv_sbox = 8'h93;  8'hDD: aes_inv_sbox = 8'hC9;
        8'hDE: aes_inv_sbox = 8'h9C;  8'hDF: aes_inv_sbox = 8'hEF;

        8'hE0: aes_inv_sbox = 8'hA0;  8'hE1: aes_inv_sbox = 8'hE0;
        8'hE2: aes_inv_sbox = 8'h3B;  8'hE3: aes_inv_sbox = 8'h4D;
        8'hE4: aes_inv_sbox = 8'hAE;  8'hE5: aes_inv_sbox = 8'h2A;
        8'hE6: aes_inv_sbox = 8'hF5;  8'hE7: aes_inv_sbox = 8'hB0;
        8'hE8: aes_inv_sbox = 8'hC8;  8'hE9: aes_inv_sbox = 8'hEB;
        8'hEA: aes_inv_sbox = 8'hBB;  8'hEB: aes_inv_sbox = 8'h3C;
        8'hEC: aes_inv_sbox = 8'h83;  8'hED: aes_inv_sbox = 8'h53;
        8'hEE: aes_inv_sbox = 8'h99;  8'hEF: aes_inv_sbox = 8'h61;

        8'hF0: aes_inv_sbox = 8'h17;  8'hF1: aes_inv_sbox = 8'h2B;
        8'hF2: aes_inv_sbox = 8'h04;  8'hF3: aes_inv_sbox = 8'h7E;
        8'hF4: aes_inv_sbox = 8'hBA;  8'hF5: aes_inv_sbox = 8'h77;
        8'hF6: aes_inv_sbox = 8'hD6;  8'hF7: aes_inv_sbox = 8'h26;
        8'hF8: aes_inv_sbox = 8'hE1;  8'hF9: aes_inv_sbox = 8'h69;
        8'hFA: aes_inv_sbox = 8'h14;  8'hFB: aes_inv_sbox = 8'h63;
        8'hFC: aes_inv_sbox = 8'h55;  8'hFD: aes_inv_sbox = 8'h21;
        8'hFE: aes_inv_sbox = 8'h0C;  8'hFF: aes_inv_sbox = 8'h7D;

        default: aes_inv_sbox = 8'h00;

    endcase
end

endmodule

