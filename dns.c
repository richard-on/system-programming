#define _CRT_SECURE_NO_WARNINGS

#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#include "dns.h"
#include "hashTable.h"

#define SIZE 500000

static int dnsCount = 0;
HashTable* htArr[50];

DNSHandle InitDNS()
{
    dnsCount++;
    HashTable* ht = createTable(SIZE);
    htArr[dnsCount - 1] = ht;

    return dnsCount;
}

void LoadHostsFile( DNSHandle hDNS, const char* hostsFilePath )
{
    FILE* fp;
    char * line = NULL;
    size_t len = 0;
    ssize_t read;
    unsigned int ip1 = 0, ip2 = 0, ip3 = 0, ip4 = 0;
    char hostName[201] = {0};
    IPADDRESS ip = ( ip1 & 0xFF ) << 24 |
                        ( ip2 & 0xFF ) << 16 |
                        ( ip3 & 0xFF ) << 8  |
                        ( ip4 & 0xFF ) ;;

    fp = fopen(hostsFilePath, "r");
    if (fp == NULL)
        exit(EXIT_FAILURE);

    while ((read = getline(&line, &len, fp)) != -1) {
        sscanf(line, "%d.%d.%d.%d %s", &ip1, &ip2, &ip3, &ip4, hostName);
        ip = ( ip1 & 0xFF ) << 24 |
             ( ip2 & 0xFF ) << 16 |
             ( ip3 & 0xFF ) << 8  |
             ( ip4 & 0xFF ) ;
        insert(htArr[hDNS - 1], hostName, ip);
    }

    fclose(fp);
    if (line)
        free(line);

}

IPADDRESS DnsLookUp( DNSHandle hDNS, const char* hostName )
{
    return search(htArr[hDNS - 1], hostName);
}

void ShutdownDNS( DNSHandle hDNS )
{
    freeTable(htArr[hDNS - 1]);
}