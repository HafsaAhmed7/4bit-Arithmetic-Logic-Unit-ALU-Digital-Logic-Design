//==================================================
// Testbench for 4-bit ALU
//==================================================
module tb_ALU_4bit;

reg  [3:0] A;
reg  [3:0] B;
reg  [3:0] OP_SEL;
wire [3:0] Y;
wire Carry;

integer i;

// Instantiate ALU
ALU_4bit DUT (
    .A(A),
    .B(B),
    .OP_SEL(OP_SEL),
    .Y(Y),
    .Carry(Carry)
);

initial begin
    // Fixed inputs
    A = 4'b0101;   // 5
    B = 4'b0011;   // 3

    // Sweep OP_SEL from 0 to 15
    for (i = 0; i < 16; i = i + 1) begin
        OP_SEL = i[3:0];
        #10;
    end

    $finish;
end

endmodule

