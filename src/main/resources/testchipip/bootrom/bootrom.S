/* minimal_bootrom.S */
/* 复位后：直接跳到 DRAM 的 _start */

#define DRAM_BASE 0x80000000

    .section .text.start, "ax", @progbits
    .globl _start
_start:
    li   t0, DRAM_BASE
    jr   t0

    /* 理论上永远不会走到这里 */
1:
    j 1b
