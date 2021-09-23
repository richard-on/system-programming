#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "hashTable.h"

#define SIZE 100000

typedef struct HostNameIp{
    char* hostName;
    IPADDRESS ip;
} HostNameIp;

typedef struct HashTable{
    HostNameIp** items;
    int size;
    int count;
} HashTable;

#define FNV_OFFSET 14695981039346656037UL
#define FNV_PRIME 1099511628211UL
static uint64_t hash_key(const char* key) {
    uint64_t hash = FNV_OFFSET;
    for (const char* p = key; *p; p++) {
        hash ^= (uint64_t)(unsigned char)(*p);
        hash *= FNV_PRIME;
    }
    return hash;
}

HashTable* createTable(int size){
    HashTable* table = (HashTable*) malloc(sizeof(HashTable));
    table->size = size;
    table->count = 0;
    table->items = (HostNameIp**) calloc(table->size, sizeof(HostNameIp*));
    for (int i=0; i<table->size; i++)
        table->items[i] = NULL;

    return table;
}

HostNameIp* createItem(char* hostName, IPADDRESS ip){
    HostNameIp* item = (HostNameIp*) malloc(sizeof(HostNameIp));
    item->hostName = (char*) malloc(strlen(hostName) + 1);

    strcpy(item->hostName, hostName);
    item->ip = ip;

    return item;
}

void freeItem(HostNameIp* item){
    free(item->hostName);
    free(item->ip);
    free(item);
}

void freeTable(HashTable* table){
    for (int i = 0; i < table->size; i++) {
        HostNameIp* item = table->items[i];
        if (item != NULL) {
            freeItem(item);
        }
    }

    free(table->items);
    free(table);
}

void insert(HashTable* table, char* hostName, IPADDRESS ip){
    HostNameIp* item = createItem(hostName, ip);
    uint64_t hashIndex = hash_key(hostName);
    hashIndex %= table->size;

    HostNameIp* currentItem = table->items[hashIndex];
    while (currentItem != NULL) {
        hashIndex++;
        hashIndex %= SIZE;
        currentItem = table->items[hashIndex];
    }
    if (table->count == table->size) {

        printf("Insert Error: Hash Table is full\n");
        freeItem(currentItem);
        return;
    }
    table->items[hashIndex] = item;
    table->count++;

}

IPADDRESS search(HashTable* table, const char* hostName){
    uint64_t hashIndex = hash_key(hostName);
    hashIndex %= table->size;
    HostNameIp* currentItem = table->items[hashIndex];

    if (currentItem != NULL) {
        while(strcmp(currentItem->hostName, hostName) != 0){
            hashIndex++;
            hashIndex %= SIZE;
            currentItem = table->items[hashIndex];
        }

        return currentItem->ip;
    }

    return INVALID_IP_ADDRESS;
}