#!/bin/bash
rclone version
rclone serve http 01: --addr :$PORT --buffer-size 25G --dir-cache-time 12h --vfs-read-chunk-size 25G --vfs-read-chunk-size-limit 100G --vfs-cache-mode writes
