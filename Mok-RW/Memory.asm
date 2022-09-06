.code

ReadMemory proc
	mov r10, rcx
	mov eax, 3Fh
	syscall
	ret
ReadMemory endp

WriteMemory proc
	mov r10, rcx
	mov eax, 3Ah
	syscall
	ret
WriteMemory endp

ProtectMemory proc
	mov r10, rcx
	mov eax, 50h
	syscall
	ret
ProtectMemory endp

end