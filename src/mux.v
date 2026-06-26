`timescale 1ns / 1ps

module mux64 (
    input  wire [63:0] in,  
    input  wire [5:0]  sel, 
    output wire        out  
);

    // Shifting the 64-bit input right by the select value 
    // and masking the bottom bit guarantees a clean MUX logic tree in Yosys.
    assign out = (in >> sel) & 1'b1;

endmodule
