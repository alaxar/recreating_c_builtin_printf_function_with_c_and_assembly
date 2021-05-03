section .data
	msg	db	'hello, world!', 0xa
	msglen	equ	$-msg

section .bss


section .text
global main
main:
	mov rax, 4
	mov rbx, 1
	mov rcx, msg
	mov rdx, msglen
	int 0x80

	; exit
	mov rax, 1
	mov rbx, 0x0
	int 0x80
