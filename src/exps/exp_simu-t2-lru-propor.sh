#!/bin/bash
#Exp Content: 	SIMU; small traces [LRU] WA
#Setting:	define NO_REAL_DISK_IO, SIMU_NO_DISK_IO; undef PORE_BATCH

cache_blksize=(20595 24795 48167 19554 106230 65278 39736 51410 36268 43761)
fifo_blksize=(3987 4941 9513 3754 21206 13054 7645 10273 6731 7451)

#chances_n=(1)

rm -f /dev/shm/*
/home/smr/smr-ssd-cache 0 0 2 0 0 ${cache_blksize[2]} ${fifo_blksize[2]} 1 1 0.2 > /home/outputs/pore_test_outputfiles/exp/lru-t2-r8w2.out

rm -f /dev/shm/*
/home/smr/smr-ssd-cache 0 0 2 0 0 ${cache_blksize[2]} ${fifo_blksize[2]} 1 1 0.4 > /home/outputs/pore_test_outputfiles/exp/lru-t2-r6w4.out

rm -f /dev/shm/*
/home/smr/smr-ssd-cache 0 0 2 0 0 ${cache_blksize[2]} ${fifo_blksize[2]} 1 1 0.6 > /home/outputs/pore_test_outputfiles/exp/lru-t2-r4w6.out

rm -f /dev/shm/*
/home/smr/smr-ssd-cache 0 0 2 0 0 ${cache_blksize[2]} ${fifo_blksize[2]} 1 1 0.8 > /home/outputs/pore_test_outputfiles/exp/lru-t2-r2w8.out


