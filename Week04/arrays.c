#include <stdio.h>

#define SIZE_TT unsigned int

#define SIZE 5

int print_arr(int arr[], int size) {
	printf("0X%x\n", arr);
}

int main(void) {
	int arr[SIZE] = {1, 2, 3, 4, 5};
	printf("arr[%d] = %d\n", 1, arr[1]);

	// printf("arr[%d] = %d\n", -12, arr[-12]);

	printf("0x%x -> %d\n", arr, *arr);
	print_arr(arr);

	return 0;
}
