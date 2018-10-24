#!/bin/bash

inotifywait -m /etc -e access |
    while read path action file; do
	echo "SO;$file;$path;$action;" > /var/log/watcher_access.log
        # do something with the file
    done
