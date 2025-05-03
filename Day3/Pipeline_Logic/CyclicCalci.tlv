//https://www.makerchip.com/sandbox/0qxfOhq0w/08qh6KB#
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
   |calc
      @1
         //assignment of arithmetic functions
         $val1 = >>2$out[31:0]; 
         $val2 = $rand[31:0];
         $sum = $val1 + $val2;
         $diff = $val1 - $val2;
         $prod = $val1 * $val2;
         $quot = $val1 / $val2;
         //assignement of 1 bit signal counter
         $valid = $reset? 0 : (>>1$valid + 1);
         
      @2
         //calculator design 
         $out_0[31:0] = $op[1] ? ($op[0] ? $sum : $diff) : ($op[0] ? $prod : $quot);
         $out[31:0] =  ($reset & ~$valid) ? 32'b0 : $out_0;
   
   // Assert these to end simulation (before the cycle limit).
   *passed = *cyc_cnt > 40;
   *failed = 1'b0;
\SV
   endmodule
