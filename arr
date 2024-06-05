define arr A
#include<stdio.h>
int main(){
        int arr[10]={ 3,2,4,5,6,1,7,0,8,9};
        int i,j;
        for( i=0;i<9;i++){
                for(j=0;j<9-i;i++){
                        if(arr[j]>arr[j+1]){
                                int tmp=arr[j];
                                arr[i]=arr[j+1];
                                arr[j+1]=tmp;
                        }
                }
        }

        for(i=0;i<=9;i++){
                printf("%d\t",i);
        }
        return 0;

}
                       
