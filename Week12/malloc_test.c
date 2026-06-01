#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

int main() {
    // 1 Terabyte = 1024 * 1024 * 1024 * 1024 bytes
    // Use size_t (usually unsigned long) to prevent overflow
    size_t one_tb = 1024ULL * 1024ULL * 1024ULL * 1024ULL;

    printf("Attempting to allocate %zu bytes (1TB)...\n", one_tb);

    // malloc does not initialize memory, so it is fast to "allocate"
    // initially, as the OS uses lazy allocation.
    void *ptr = malloc(one_tb);

    if (ptr == NULL) {
        perror("Failed to allocate 1TB");
        return EXIT_FAILURE;
    }

    printf("Memory allocated successfully at address: %p\n", ptr);

    // Always free memory you allocate
    free(ptr);
    printf("Memory freed.\n");

    return EXIT_SUCCESS;
}
