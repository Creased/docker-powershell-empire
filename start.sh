#!/bin/bash

screen -S empire -L -Logfile /root/empire/data/empire.log -dm bash -c "cd /root/empire/; /root/empire/empire"
tail -f /root/empire/data/empire.log

