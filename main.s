.global _main
.align 2

.text
_main:
    mov x0, #1
    adrp x1, message@PAGE
    add x1, x1, message@PAGEOFF
    mov x2, #14
    mov x16, #4
    svc #0

    mov x0, #0
    mov x16, #1
    svc #0

.data
message: 
    .ascii "Hello, World!\n"
