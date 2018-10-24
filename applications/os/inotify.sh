#!/bin/bash

inotifywait -m /home/logger/test/ -e create -e moved_to |
    while read path action file; do
        echo "SO;$file;$path;$action" > /var/log/watcher.log
        # do something with the file
    done
