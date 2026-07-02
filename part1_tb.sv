`timescale 1ns / 1ps

module tb();

logic clock; 
logic reset; 
logic up;
logic down;
logic [15:0] led;   
         
contor dut
    (
    .clock(clock),         
    .reset(reset),         
    .up(up),            
    .down(down),          
    .led(led)    
    );


initial 
begin
    clock=0;
    forever 
        begin
        #1 clock= ~clock;
        end
end


initial 
begin
      reset=1;
      up=0;
      down=0;
    #20 reset=0;
    #20 up=1;
    #20 up=0;
    #20 up=1;
    #20 up=0;
    #20 up=1;
    #20 up=0;
    #20 down=1;
    #20 down=0;
    #20 up=0; 
    #20 down=1;
    #20 down=0;
    #20 down=1;
    #20 down=0;
    #20 down=1;
    #20 down=0;
    #20 down=1;
    #20 down=0;
    
end

initial
 begin
    #2000 $stop();                        
end
endmodule
