module contor
(
    input logic clock, reset, up, down,
    output logic [15:0] led
);
logic rst_cnt, up_cnt, down_cnt;
debouncer #(.not_noise(5))
debouncer_reset
(
   .in(reset), 
   .clock(clock),
   .out(rst_cnt)
);

debouncer #(.not_noise(5))
debouncer_up
(
   .in(up), 
   .clock(clock),
   .out(up_cnt)
);
debouncer #(.not_noise(5))
debouncer_down
(
   .in(down), 
   .clock(clock),
   .out(down_cnt)
);
counter16b counter16b
(
   .up(up_cnt), 
   .down(down_cnt), 
   .reset(rst_cnt), 
   .clock(clock),
   .out(led )
);

endmodule