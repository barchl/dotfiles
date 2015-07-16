/*
* ToDo.c
* Description: Generates a to-do list. Must be able to remove/add entries (and change the numbers when shifting entries, if there are numbers.) 
* Add dates for each list of entries? hashtable of months linked to seperate hashtables by date? 
* Author: Benson Chau
*/

#include <stdio.h>
#include <stdlib.h>

typedef struct node*{
    struct node* head;
}

void menu(void);
void newList(void);
void printList(void);

int main(void){

    bool quit = false;

    
    //options menu
    options = menu();

    switch(options):
        case 1: 
            //print all lists and all entries in the respective lists.
            
        case 2:
            //initialize a new list. 
            
        case 3:
            //Quit. 
}

int menu(void){
    printf("The To-Do List\n");
    printf("1. View lists.\n");
    printf("2. Create new list. \n");
    printf("3. Quit. \n");
    printf(">> ");

    int options;
    scanf("%i", &options);
    return options;
}
