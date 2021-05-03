ASM_D = print_s.asm
ASM_O = print_s.o

${ASM_O}: ${ASM_D}
	@echo "Assembling ${ASM_D}..."
	nasm -f elf64 ${ASM_D}

sample: sample.o ${ASM_O}
	gcc -no-pie -nostartfiles sample.o ${ASM_O} -o sample

sample.o: sample.c
	gcc -c sample.c


clean:
	@echo "Cleaning..."
	rm print_s.o sample sample.o
