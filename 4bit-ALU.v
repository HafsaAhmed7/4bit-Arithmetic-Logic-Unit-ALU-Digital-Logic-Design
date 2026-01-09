//==================================================
// 4-bit ALU
// OP_SEL based operation selection
//==================================================
module ALU_4bit (
    input  [3:0] A,
    input  [3:0] B,
    input  [3:0] OP_SEL,
    output reg [3:0] Y,
    output reg Carry
);

always @(*) begin
    Y     = 4'b0000;
    Carry = 1'b0;

    case (OP_SEL)

        4'b0000: begin            // Addition
            {Carry, Y} = A + B;
        end

        4'b0001: begin            // Subtraction (A - B)
            {Carry, Y} = A - B;
        end

        4'b0010: begin            // 1's Complement of B
            Y = ~B;
        end

        4'b0011: begin            // 2's Complement of B
            Y = (~B) + 1;
        end

        4'b0100: begin            // 1's Complement of A
            Y = ~A;
        end

        4'b0101: begin            // 2's Complement of A
            Y = (~A) + 1;
        end

        4'b0110: begin            // B Increment
            Y = B + 1;
        end

        4'b0111: begin            // B Decrement
            Y = B - 1;
        end

        4'b1000: begin            // A Increment
            Y = A + 1;
        end

        4'b1001: begin            // A Decrement
            Y = A - 1;
        end

        4'b1010: begin            // Bitwise OR
            Y = A | B;
        end

        4'b1011: begin            // Bitwise AND
            Y = A & B;
        end

        4'b1100: begin            // Bitwise XOR
            Y = A ^ B;
        end

        4'b1101: begin            // Load A
            Y = A;
        end

        4'b1110: begin            // Counter (A + 1)
            Y = A + 1;
        end

        4'b1111: begin            // Don't care
            Y = 4'b0000;
        end

        default: begin
            Y = 4'b0000;
        end
    endcase
end

endmodule

