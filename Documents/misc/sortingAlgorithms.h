
#ifndef SORTINGALGORITHMS_H
#define SORTINGALGORITHMS_H

#include <stdio.h>
#include <stdlib.h>

//MAX_VALUE of the values in nums:
#define MAX_VALUE 100

void menu1(void);

void menu2(void);

void bubbleSort(int arr[]);

void selectionSort(int arr[]);

void insertionSort(int arr[]);

void quickSort(int arr[]);

void mergeSort(int arr[]);

void swap(int* a, int* b);

int[] initArr(int len); 

void scrambleArr(int arr[], int len); //figure out how to find length from just the array.

void getArr(int arr[], int len);

#endif // SORTINGALGORITHMS_H



