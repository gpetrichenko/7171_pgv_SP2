.data
qq_str:
	.string "QQ world, Prog by 717_1PGV!\n"
	.set qq_str_len, . - qq_str - 1
.text
.global main
.type main, @function
main:
	movl $4, %eax
	movl $1, %ebx
	movl $qq_str, %ecx
	movl $qq_str_len, %edx
	int $0x80
	movl $1, %eax
	movl $0, %ebx
	int $0x80
.size main, . - main
