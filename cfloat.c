#include <stdio.h>

int convert_float(double d){
    double v = d;
    float w = v;

    printf("double : %.10f, float : %.10f\n", v, w);
    printf("double : %.16f, float : %.16f\n", v, w);
    return 0;
}

int main(void){
    convert_float(-278.15);
    convert_float(2);
    return 0;
}

