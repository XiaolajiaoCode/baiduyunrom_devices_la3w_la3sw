#! /system/bin/sh
mkdir /storage/sdcard0/aplog
#mkdir /storage/sdcard0/aplog/anr
#mkdir  /storage/sdcard0/aplog/tombstones
anrlogname="anr_"$(date +"%Y-%m-%d_%H-%M-%S")
tomblogname="tombstone_"$(date +"%Y-%m-%d_%H-%M-%S")

cat /data/anr/* > /mnt/sdcard/aplog/$anrlogname.txt
#cat /data/tombstones/* > /mnt/sdcard/aplog/$tomblogname.txt
#bugreport >/mnt/sdcard/aplog/bugreport.txt