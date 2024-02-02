#!/bin/bash
rclone version
rclone serve http 01: --addr :8000 --buffer-size 256M --dir-cache-time 12h --vfs-read-chunk-size 256M --vfs-read-chunk-size-limit 2G --vfs-cache-mode writes
