section .text
global print_s

print_s:
	push rbp
	mov rbp, rsp
	mov rax, 4
	mov rbx, 1
	mov rcx, rdi
	mov rdx, rsi
	int 0x80

	mov rax, 1
	mov rbx, 0
	int 0x80
	leave
	ret

global string_len

string_len:
	push rbp
	mov rbp, rsp
	mov rax, rsi
	mov rcx, 0
again:  cmp BYTE[rdi], 0
	je done
	inc rcx
	inc rdi
	jmp again

done:
	mov rax, rcx
	leave
	ret	 
