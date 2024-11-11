`timescale 1ns / 1ps

module full_adder_tb;
    logic a,b,cin;
    logic s2,cout;
    
    full_adder dut(
    .a(a),
    .b(b),
    .cin(cin),
    .s2(s2),
    .cout(cout)
    );
    
    initial begin
    // Display header
    $display("Time\t a\t b\t cin\t s\t cout\t");
    $display("------------------------");
    // Apply test vectors with $display statements
    a = 0; b = 0; cin = 0; #10;
    $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, cin,s2,cout);
    a = 0; b = 0; cin = 1; #10;
    $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, cin,s2,cout);
    a = 0; b = 1; cin = 0; #10;
    $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, cin,s2,cout);
    a = 0; b = 1; cin = 1; #10;
    $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, cin,s2,cout);
    a = 1; b = 0; cin = 0; #10;
    $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, cin,s2,cout);
    a = 1; b = 0; cin = 1; #10;
    $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, cin,s2,cout);
    a = 1; b = 1; cin = 0; #10;
    $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, cin,s2,cout);
    a = 1; b = 1; cin = 1; #10;
    $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, cin,s2,cout);
    $finish;
    end

endmodule
