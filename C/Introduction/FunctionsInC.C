#include <iostream>
#include <cstdio>
using namespace std;

int max_of_four(int a, int b, int c, int d){
    if(a < b){
        if(b < c){
            if(c < d){
                return d;
            }
            else{
                return c;
            }
        }
        else return b;
    }
    else if(a < c){
        return c;
    }
    else if(a < d){
        return d;
    }
    else{
        return a;
    }
}


int main() {
    int a, b, c, d;
    scanf("%d %d %d %d", &a, &b, &c, &d);
    int ans = max_of_four(a, b, c, d);
    printf("%d", ans);
    
    return 0;
}

