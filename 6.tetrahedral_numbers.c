#include <stdio.h>

int main(void) {
    int i, j, n, total, how_many;

    scanf("%d", &how_many);

    n = 1;

    while (n <= how_many)
    {
        total = 0;
        j = 1;
        while (j <= n)
        {
            i = 1;
            while (i <= j){
                total += i;
                i += 1;
            }
            j += 1;
        }
        printf("%d\n", total);
        n += 1;
    }
    return 0;
}