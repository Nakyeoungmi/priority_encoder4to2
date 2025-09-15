`timescale 1ns / 1ps
module tb_priority_encoder;

    reg  [3:0] D;
    wire x, y, v;

   
    priority_encoder uut (
        .D(D),
        .x(x),
        .y(y),
        .v(v)
    );

    initial begin
       
        $monitor("time=%0t | D=%b | x=%b y=%b v=%b", $time, D, x, y, v);

       
        D = 4'b0000; #10;
        D = 4'b1000; #10; 
        D = 4'b1011; #10; 
        D = 4'b0101; #10; 
        D = 4'b0001; #10; 

        $finish; 
    end

endmodule
