.global _start

.text
    _start:
        xor     %rbp, %rbp
        sub     $0x20, %sp

        mov     $1, %rdi
        mov     $title, %rsi
        mov     $title_len, %rdx
        mov     $1, %eax
        syscall

        add     $0x20, %sp

        xor     %rdi, %rdi
        mov     $0xe7, %rax
        syscall
        hlt

.data
    title: .ascii "BAD1DEA5\n"
    title_len = . - title
