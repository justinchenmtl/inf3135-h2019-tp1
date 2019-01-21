#include <stdio.h> 
 
int main() {
    FILE *fp = NULL;
    fp = fopen("data.txt", "r"); 
    int i=0, j=0, min, sum, max;
    
    fscanf(fp, "%d", &min);
    fscanf(fp, "%d", &max);
  
    for(i=min; i<=max; i++){
        sum=0;
        for(j=1; j<i; j++){
            if(i%j==0)
                sum += j;
        }
        if(sum == i)
            printf("Les nombres parfaits sont:  %d\n", i);
    }
    return 0;
} 
