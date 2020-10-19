#include <stdio.h>

int main(void) {
    int number, i;

    scanf("%d", &number);

    i = 1;
    while(i <= number){
        printf("%d\n", i);
        i += 1;
    }

    return 0;
}