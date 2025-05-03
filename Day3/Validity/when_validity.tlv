//https://www.makerchip.com/sandbox/0qxfOhq0w/0Elh3DJ
\m5_TLV_version 1d: tl-x.org
\m5
  //use(m5-1.0)   /// uncomment to use M5 macro library.
\SV
   // Macro providing required top-level module definition, random
   // stimulus support, and Verilator config.
   m5_makerchip_module   // (Expanded in Nav-TLV pane.)
\TLV
   |calc
      @1
         $reset = *reset;
      ?$valid
         @1
            $aa_sq[31:0] = $aa[3:0] ** 2;
            $bb_sq[31:0] = $bb[3:0] ** 2;
         @2
            $cc_sq[31:0] = $bb_sq + $aa_sq;
         @3
            $cc[31:0] = $cc_sq[31:0] ** 0.5;
         @4
            $temp[63:0] = $cc + >>1$tot_dist[63:0];
            $tot_dist[63:0] = $reset ? 0
               : $valid ? $temp
                  : >>1$tot_dist;
   
   // Assert these to end simulation (before the cycle limit).
   *passed = *cyc_cnt > 40;
   *failed = 1'b0;
\SV
   endmodule
