#include <stdio.h>
#include <stdlib.h>

int main() {
        int count = 0, total = 0;
        int side = 6;
        int numThrows = 500000;
        int arr [] = {0, 0, 0, 0, 0, 0};
        
        for (int i = 0; i < numThrows; i++) {
            int random = (rand() % (5+1));
            arr[random]++;
            total += random+1;
            //printf("%d\n", arr[random]);
        }
        
        printf("Threw a 6-sided dice 500,000 times.\n");
        printf("Results:\n");
        printf("%-9s%-8d%-8d%-8d%-8d%-8d%-8d \n", "Side:", 1, 2, 3, 4, 5, 6);
        printf("%-9s%-8d%-8d%-8d%-8d%-8d%-8d \n", "Count:", arr[0], arr[1], arr[2], arr[3], arr[4], arr[5]);
        printf("%s %d \n", "Sum of throws:", total);
    }
