#/system/bin/sh
mount -t ext4 -o remount,rw /dev/block/platform/msm_sdcc.3/by-num/p17 /system
rm /system/bin/callnv-service-wolftel.lock
sleep 3
mount -t ext4 -o remount,ro /dev/block/platform/msm_sdcc.3/by-num/p17 /system
