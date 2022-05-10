#!/bin/bash

LOGTIME=$(date "+%Y-%m-%d %H:%M:%S")
echo "[$LOGTIME] startup run ssh" >> /root/start_ssh.log
service ssh start >> /root/start_ssh.log
