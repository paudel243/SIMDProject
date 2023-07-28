section .text
default rel
bits 64
global asmfunction
; Paulo Delgado
asmfunction:
    push rbp
    mov rbp,rsp
    mov rsi,rdx            
    mov rdi,rcx          
    mov rcx,r8             
    xor rax,rax            
    xor r9,r9
    add rax,3
loop_start:
    cmp rax,rcx            
    je loop_end

    movsd xmm0,qword [rdi + rax*8] ; i 
    movsd xmm1,qword [rdi + (rax-3)*8] ; i -3 
    addsd xmm0,xmm1
    movsd xmm1,qword [rdi + (rax-2)*8] ; i - 2
    addsd xmm0,xmm1
    movsd xmm1,qword [rdi + (rax-1)*8] ; i - 1
    addsd xmm0,xmm1
    movsd xmm1,qword [rdi + (rax+3)*8] ; i+3
    addsd xmm0,xmm1
    movsd xmm1,qword [rdi + (rax+2)*8]; i+2
    addsd xmm0,xmm1
    movsd xmm1,qword [rdi + (rax+1)*8]; i+1
    addsd xmm0,xmm1
    movsd qword [rsi + r9*8],xmm0 

    inc rax
    inc r9
    jmp loop_start

loop_end:
    pop rbp
    ret