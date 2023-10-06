run: main
	spike --isa=rv64gcv_zba pk ./main  

build: main.c vec.S
	riscv64-unknown-elf-gcc -O main.c vec.S -o main -march=rv64gcv_zba -lm

clean:
	rm main
