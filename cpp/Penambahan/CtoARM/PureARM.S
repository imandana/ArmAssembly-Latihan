	.text
	.align	2
	.global	TambahNormal
	.type	TambahNormal, %function
TambahNormal:
	@ int TambahNormal(int a, int b)
	@ int c = 5;
	@ x = (a+b)-c;
	add r0, r0, r1			@ Tambahkan r0(parameter pertama) dengan r1(Parameter kedua) ke r0
	sub r0, r0, #5			@ lalu kurangi nilai r0 dengan 5 ke r0
	bx	lr					@ return nilai pada r0(yang merupakan register untuk meReturn data)
	
	.size	TambahNormal, .-TambahNormal
	
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

	.global	TambahChangeParamater
	.type	TambahChangeParamater, %function
TambahChangeParamater:
	@ int TambahChangeParamater(int a, int b)
	@ a = 10;
	@ b = 20;
	@ int c = 5;
	@ x = (a+b)-c;
	mov r0, #25			@ masukkan nilai 25 ke r0
	bx	lr				@ return nilai pada r0(yang merupakan register untuk meReturn data)
	.size	TambahChangeParamater, .-TambahChangeParamater
	
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

	.global	TambahChangeParamaterPassByPointer
	.type	TambahChangeParamaterPassByPointer, %function
TambahChangeParamaterPassByPointer:
	@ int TambahChangeParamaterPassByPointer(int *a, int *b)
	@ *a = 10;
	@ *b = 20;
	@ int c = 5;
	@ x = (*a+*b)-c;
	mov r2, #10			@ Masukkan nilai 10 pada register 2
	str r2, [r0]		@ Store nilai r2 ke Alamat register 0(Parameter pertama(int *a))
	mov r2, #20			@ masukakan nilai 20 pada register 2
	str r2, [r1]		@ Store nilai r2 ke Alamat register 1(Parameter kedua(int *b))
	ldr r0, [r0]		@ Load Address dari r0 yang nilainya 10
	add r0, r0, #15		@ lakukan penambahan pada register 0 dengan nilai (10) + 15 
						@ ini sudah teroptimasi oleh compiler jadi nilai langsung direka
	bx	lr				@ return nilai pada r0(yang merupakan register untuk meReturn data)
						@ disini x langsung jadi return, sudah optimasi compiler
						
	.size	TambahChangeParamaterPassByPointer, .-TambahChangeParamaterPassByPointer