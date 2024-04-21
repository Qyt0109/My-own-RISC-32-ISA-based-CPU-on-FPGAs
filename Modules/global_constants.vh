`ifndef GLOBAL_CONSTANTS_H
`define GLOBAL_CONSTANTS_H
// Opcodes
// Scalar Operations
`define ADD 4'b0000
`define ADDI 4'b0001
`define NAND 4'b0010
`define MUL 4'b0011
`define SUB 4'b0100
`define LW 4'b0101
`define SW 4'b0110
`define BNE 4'b0111 // Atom left only
`define BLZ 4'b0111 // Atom right only
`define JALR 4'b1111
// Vector Operations
`define VADD 4'b1000
`define VSUM 4'b1001
`define VNAND 4'b1010
`define VMUL 4'b1011
`define VXOR 4'b1100
`define VLW 4'b1101
`define VSW 4'b1110
// Others
`define ADDIL 4'b0010
`define VMOV 4'b1110
`define EXTEND 4'b1111
// Sub-opcodes
`define VEC 4'b0000
`define VLO 4'b0001
`define VHI 4'b0010

// Instruction Set Encoding (ISE) structure
// Opcode
`define ISE_OPCODE 15:12 // Opcode
// Register
`define ISE_RA 11:8 // rA
`define ISE_RB 7:4 // rB
`define ISE_RC 3:0 // rC
// Immediate
`define ISE_IMM4_VALUE 3:0 // immediate 4-bit data bits
`define ISE_IMM8_VALUE 7:0 // immediate 8-bit data bits
`define ISE_IMM4_SIGN 3 // immediate 4-bit sign bit
`define ISE_IMM8_SIGN 7 // immediate 8-bit sign bit
// Word structure w0w1w2w3
`define WORD_INDEX_0 31:0 // word 0 of 128-bit vector
`define WORD_INDEX_1 63:32 // word 1 of 128-bit vector
`define WORD_INDEX_2 95:64 // word 2 of 128-bit vector
`define WORD_INDEX_3 127:96 // word 3 of 128-bit vector
// Constant values
`define WORD_ZERO 32'd0; // 32-bit of 0
`define WORD_Z 32'Z; // 32-bit of Z (high impedance)

`define HALT_INSTRUCTION {`EXTEND, 4'b0000, 4'b0000, 4'b1101}
`endif
