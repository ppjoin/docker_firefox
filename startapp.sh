#!/bin/bash
export HOME=/config
sleep 10
if [ -z $AM ]; then 
	exec 2>&1 /usr/bin/firefox --display=0:0
else
	exec 2>&1 /usr/bin/firefox --display=0:0 -p am1 https://www.alexamaster.net/Master/$AM
fi
# 最小化所有窗口
# wmctrl -k on
