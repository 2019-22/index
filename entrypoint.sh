#!/bin/bash
rclone version
rclone serve http 01: --addr :$PORT --buffer-size 256M --dir-cache-time 12h --vfs-read-chunk-size 256M --vfs-read-chunk-size-limit 1G --vfs-cache-mode writes
