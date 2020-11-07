#!/bin/bash

# Using this script for qbittorrent to send torrent status to slack

# Declare variables
torrent_name=$1
torrent_size=$2
torrent_size_mb=$(($2 / 1024 / 1024))MB

# Slack Webhook
exec /config/toslack -t "Download Completed" -b "$torrent_name\\\n$torrent_size_mb" -c "{insert channel name here}" -u "{insert slack webhook here}" > /dev/null
