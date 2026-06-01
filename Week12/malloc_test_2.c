#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>

int main() {
    // 1 Terabyte in bytes
    size_t one_tb = 1024ULL * 1024ULL * 1024ULL * 1024ULL;
    int value = 15213;

    printf("Attempting to allocate and initialize 1TB with value %d...\n", value);

    // Allocate memory
    int *ptr = malloc(one_tb);

    if (ptr == NULL) {
        perror("Failed to allocate 1TB");
        return EXIT_FAILURE;
    }

    /* * Initializing 1TB of memory:
     * We iterate through the memory as integers to set the value 15213.
     * Dividing one_tb by sizeof(int) gives the number of integer slots.
     */
    size_t num_elements = one_tb / sizeof(int);
    for (size_t i = 0; i < num_elements; i++) {
        ptr[i] = value;
    }

    printf("Initialization complete.\n");

    // Free memory
    free(ptr);
    printf("Memory freed.\n");

    return EXIT_SUCCESS;
}
