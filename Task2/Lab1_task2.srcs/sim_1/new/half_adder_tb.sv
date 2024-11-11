`timescale 1ns / 1ps

module half_adder_tb;
    logic a,b;
    logic s,c;
    
    half_adder dut(
    .a(a),
    .b(b),
    .s(s),
    .c(c)
    );
    
    initial begin
    $display("Time\t a\t b\t s\t c");
    $display("------------------------");
    a = 0; b = 0; #10
    $display("%0t\t %b\t %b\t %b\t %b", $time, a, b, s,c);
    a = 0; b = 1; #10;
    $display("%0t\t %b\t %b\t %b\t %b", $time, a, b, s,c);
    a = 1; b = 0; #10;
    $display("%0t\t %b\t %b\t %b\t %b", $time, a, b, s,c);
    a = 1; b = 1; #10;
    $display("%0t\t %b\t %b\t %b\t %b", $time, a, b, s,c);
    // End simulation
    $finish;
    end

endmodule
