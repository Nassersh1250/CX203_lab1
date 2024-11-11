`timescale 1ns / 1ps

module andgate(
    input logic a,
    input logic b,
    output logic f
    );
    
    and u_and(f,a,b);
endmodule
