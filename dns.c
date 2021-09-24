#define _CRT_SECURE_NO_WARNINGS

#include <stdlib.h>
#include <stdio.h>

#include "dns.h"
#include "hashTable.h"

/**Because my collision dealing mechanism relies on iterating through HostNameIp until free spot is found,
 * the more sparse the table, the faster the collision will be resolved.
 * That's why my HashTable size is substantially larger than number of records in hosts file.
 *
 * While it may not be the best solution,
 * test times are great with DNS engine load only slightly slower than example (when compiled with mvsc | release build)
 * (And are basically same when compiled with Cygwin | release build).
 * **/
#define SIZE 50000
#define ARRAYSIZE 50

static int dnsCount = 0;
HashTable* htArr[ARRAYSIZE];

DNSHandle InitDNS()
{
    if(dnsCount > ARRAYSIZE - 1){
        return INVALID_DNS_HANDLE;
    }
    else{
        HashTable* ht = createTable(SIZE);
        htArr[dnsCount] = ht;
        dnsCount++;
    }

    return dnsCount;
}

void LoadHostsFile( DNSHandle hDNS, const char* hostsFilePath )
{
    FILE* fp;
    unsigned int ip1 = 0, ip2 = 0, ip3 = 0, ip4 = 0;
    char hostName[201] = {0};
    IPADDRESS ip;

    fp = fopen(hostsFilePath, "r");
    if (fp == NULL)
        exit(EXIT_FAILURE);

    while (fscanf(fp, "%d.%d.%d.%d %s", &ip1, &ip2, &ip3, &ip4, hostName) != EOF) {
        ip = ( ip1 & 0xFF ) << 24 |
             ( ip2 & 0xFF ) << 16 |
             ( ip3 & 0xFF ) << 8  |
             ( ip4 & 0xFF ) ;
        insert(htArr[hDNS - 1], hostName, ip);
    }

    fclose(fp);
}

IPADDRESS DnsLookUp( DNSHandle hDNS, const char* hostName )
{
    return search(htArr[hDNS - 1], hostName);
}

void ShutdownDNS( DNSHandle hDNS )
{
    freeTable(htArr[hDNS - 1]);
}