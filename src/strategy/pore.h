#define DEBUG 0
#ifndef _PORE_H
#define _PORE_H
#include "cache.h"
#include "global.h"

typedef struct StrategyDesp_pore
{
    long            serial_id;
    SSDBufTag       ssd_buf_tag;
    long            pre,next;
    unsigned long   hitcnt;
    long   stamp;
}StrategyDesp_pore;

//typedef struct StrategyCtrl_pore
//{
//    long            freeId;     // Head of list of free ssds
//    long            n_used;
//}StrategyCtrl_pore;

typedef struct ZoneCtrl
{
    unsigned long   zoneId;
    long            hitcnt;
    long            pagecnt;
    long            weight;
    long            head,tail;
}ZoneCtrl;


#endif // _PORE_H