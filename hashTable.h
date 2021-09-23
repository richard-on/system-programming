#ifndef LAB1_DNS_HASHTABLE_H
#define LAB1_DNS_HASHTABLE_H

#include "dns.h"

typedef struct HostNameIp HostNameIp;
typedef struct HashTable HashTable;

static uint64_t hash_key(const char* key);

HashTable* createTable(int size);

HostNameIp* createItem(char* hostName, IPADDRESS ip);

void freeItem(HostNameIp* item);

void freeTable(HashTable* table);

void insert(HashTable* table, char* hostName, IPADDRESS ip);

IPADDRESS search(HashTable* table, const char* hostName);

#endif //LAB1_DNS_HASHTABLE_H