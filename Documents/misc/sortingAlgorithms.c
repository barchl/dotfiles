/* PreCondition: Generate a random set of numbers, placed in an array. Given an array, sort it accordingly.
*  PostCondition: The array is sorted in the correct fashion, with each step
*  printed out.
*  Author: Benson Chau
*  Help me understand sorting algorithms!
*  Note: Excessive commenting.
*/

#include <stdio.h>
#include <math.h>
#include <stdlib.h>

#include "sortingAlgorithms.h"

//length of an array in C = sizeOf(arr)/sizeOf(int), where sizeOf(arr) refers to the total number of bits in arr and sizeOf(int) refers to the total number of bits in an int on the particular computer?

int main(void){

    int* nums;
    int arrLen;
    
    //need some form of exception handling 
    //replace goto statements with while statements
    //menu functions?

    options: 
    //options menu
    printf("A Sorting Algorithm Program");
    printf("/t1. Print array.\n");
    printf("/t2. Generate new array.\n\t -This needs to happen first.");
    printf("/t3. Sort.\n");
    printf("/t4. Scramble.\n");
    printf("/t5. Quit.\n");
    printf(">> ");

    //read an int called options:
    int options;
    scanf("%i", &options);

    switch(options){
        case 1: 
            getArr(nums, arrLen);
            goto options;
        case 2:
            //read length
            printf("Length of the new array: ");
            scanf("%i", &arrLen);
            //generate new array to nums.
            nums = initArr(arrLen);
            //return to options menu.
            goto options;
        case 3:
            break;
        case 4:
            scrambleArr(nums, arrLen);
            goto options;
        case 5:
            exit(0);
        default:
            printf("That choice doesn't exist!");
            goto options;
    }

    reset:
    //which sorting algorithm would you like to use?
    printf("Sorting algorithms to be used:\n");
    printf("/t1. Bubble Sort\n");
    printf("/t2. Insertion Sort\n");
    printf("/t3. Selection Sort\n");
    printf("/t4. Merge Sort\n");
    printf("/t5. Quick Sort\n");
    printf("/t6. Return to main menu.\n");
    printf("/t>> ");

    //read the sort 
    scanf("%i", &options);
    
    //if this, then use that.
    switch(options){
        case 1 :
            bubbleSort(num);
            goto options;
        case 2 :
            insertionSort(num);
            goto options;
        case 3 : 
            selectionSort(num);
            goto options;
        case 4 :
            mergeSort(num);
            goto options;
        case 5 :
            quickSort(num);
            goto options;
        case 6 :
            //back to the options menu!
            goto options;
        default :
            printf("That choice doesn't exist!");
            goto reset;
    
    }

}

void menu1(void){
}

void menu2(void){
}

//Initialize the array given a length.
int[] initArr(int len){
    // seed psuedorandom number generator
    srand48(time(NULL)); 
   
    //instantiate array of numbers, and fill.
    int[] num = new int[len];
    for(int i = 0, n = len; i < n; i++){
        num[i] = (int) (drand48() * MAX_VALUE);
    }

    return num;
}

//Scramble the given array.
void scrambleArray(int[] arr, int len){
    // seed psudorandom number generator
    srand48(time(NULL));

    //generate a random index, and fill with a random number up to 100.    
    for(int i = 0, n = len; i < n; i++){
       int randIndex = (int) drand48() * (len - i); //prob. bad way to do this.
       num[randIndex] = (int) drand48() * MAX_VALUE; 
    }

}

//Print out the values in the given array.
void getArray(int[] arr, int len){
    printf("State: ");
    for(int i = 0, n = len; i < n; i++){
       printf("%i ", arr[i]);
    } 
}

//swap two given addresses.
//* = dereference, & = address.
void swap(int* a, int* b){
    int temp = *a; 
    *a = *b; 
    *b = temp; 
}

/*
* Bubble Sort
* Description: Compare each item with the item next to it. Swap with the larger number. 
* Numbers 'bubble' up to the top, hence the name bubble sort.
* O(n^2)
* Omega()
* Theta()
*/
void bubbleSort(int[] arr){
   for(int i = 1, n = arr.length; i < n; i++){
       if(arr[i-1] > arr[i]){ //if the number before is greater than the number we're at...
           swap(&arr[i],&arr[i]); //swap them.
        }
    }
}

/*
* Selection Sort 
* Description: Find the smallest number and switch it with the first element, then find the next smallest number and switch it with the second element, etc.
* O()
* Omega()
* Theta()
*/
void selectionSort(int[] arr){
   for(int i = 0; i < arr.length; i++){
       int index = i;
       for(int j = i + 1; j < arr.length; j++){
           if(arr[j] < arr[index]){ //if you find a number that is less than the number we're at...
               index = j; //mark that number.
            }
        }
        swap(&arr[index], &arr[i]); //swap the number we're at with the small number it found.
    }
}

/*
* Insertion Sort
* Description: 'Sorted' partition and 'Unsorted' partition. Insert elements of the 'unsorted' partition into the 'sorted' partition so that it is in the correct place relative to the elements already in the 'sorted' parition. Doesn't actually require making another array. 
* O()
* Omega()
* Theta()
*/
void insertionSort(int[] arr){
    
}

/*
* Merge Sort (Recursive)
* Description: Continually split the given array into halves. Sort each split. Merge the halves until the array is full again.
* O()
* Omega()
* Theta()
*/
void mergeSort(int[] arr){
}

/*
* Quick Sort (Recursive)
* Description: Partition around a pivot point. Sort elements relative to the pivot point, so that all numbers above the pivot are greater than the pivot and vice versa. 
* O()
* Omega()
* Theta()
*/
void quickSort(int[] arr){
}
