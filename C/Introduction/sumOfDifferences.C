#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>

int main()
{
	int int1;
    int int2;
    float f1;
    float f2;
    scanf("%d %d", &int1,& int2);
    scanf("%f %f", &f1, &f2);
    int iSum = int1 + int2;
    int iDiff = int1 - int2;   
    float fSum = f1 + f2;
    float fDiff = f1 - f2;
    printf("%d %d\n%0.1f %0.1f", iSum, iDiff, fSum, fDiff);
    return 0;
}

