FLAGS = -Wall -Werror -Wextra -fPIC -lm -O2


all: lib example


lib:
	$(CC) $(FLAGS) arithmetic_kernel.c -shared -o arithmetic_kernel.so
	$(CC) $(FLAGS) -Xclang -fopenmp -L/opt/homebrew/opt/libomp/lib -I/opt/homebrew/opt/libomp/include -lomp arithmetic_kernel_omp.c -shared -o arithmetic_kernel_omp.so


example:
	$(CC) $(FLAGS) arithmetic_kernel.c -o arithmetic_kernel
	$(CC) $(FLAGS) -Xclang -fopenmp -L/opt/homebrew/opt/libomp/lib -I/opt/homebrew/opt/libomp/include -lomp arithmetic_kernel_omp.c -o arithmetic_kernel_omp


.PHONY: clean


clean:
	rm -f arithmetic_kernel.so arithmetic_kernel_omp.so arithmetic_kernel arithmetic_kernel_omp arithmetic_kernel.s arithmetic_kernel_omp.s
