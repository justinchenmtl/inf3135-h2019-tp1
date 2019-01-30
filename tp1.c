#include <stdio.h>
#include <string.h> 
 
int main(int argc, char *argv[]) {

    FILE *fp = NULL;
    fp = fopen("./data/data.txt", "r"); 
    int i=0, j=0, min, sum, max;

    for(int i = 0; i < argc; i++){
        if(argc <= 1 || strcmp(argv[1], "-c") != 0){
            fprintf(stderr, "Usage: %s <-c CODEpermanent> [-i fichier.in] [-o fichier.out] \n", argv[0]);
            return 1;
        }
        if(strcmp(argv[1], "-c") == 0 && strlen(argv[2]) != 12){
            return 2;
        }
        if(strcmp(argv[1], "-c") != 0 && strlen(argv[2]) != 12){
            return 3;
        }



    return 0;

    }
    
    if(fp == NULL){
        printf("errors!");
        return -1;
    }
    
    fscanf(fp, "%d", &min);
    fscanf(fp, "%d", &max);
    fclose(fp);
  
    for(i=min; i<=max; i++){
        sum=0;
        for(j=1; j<i; j++){
            if(i%j==0)
                sum += j;
        }
        if(sum == i)
            printf("Les nombres parfaits sont:  %d\n", i);
    }

    
} 
