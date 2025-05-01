\m5_TLV_version 1d: tl-x.org
\m5
   
   // ============================================
   // Welcome, new visitors! Try the "Learn" menu.
   // ============================================
   
   //use(m5-1.0)   /// uncomment to use M5 macro library.
\SV
   // Macro providing required top-level module definition, random
   // stimulus support, and Verilator config.
   m5_makerchip_module   // (Expanded in Nav-TLV pane.)
\TLV
   $reset = *reset;
   $val1[31:0] = $rand1[3:0];
   $val2[31:0] = $rand2[3:0];
   $out[31:0] = $reset? ($out[31:0] = 0) : ($op[1]? ($op[0]? >>1$out[31:0]+$val2[31:0] : >>1$out[31:0]-$val2[31:0]) : ($op[0]? >>1$out[31:0]*$val2[31:0] : >>1$out[31:0]/$val2[31:0]));
   // Assert these to end simulation (before the cycle limit).
   *passed = *cyc_cnt > 40;
   *failed = 1'b0;
\SV
   endmodule
