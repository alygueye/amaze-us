#!/bin/bash

# trap ctrl-c and call ctrl_c()
trap ctrl_c INT

function ctrl_c() {
    echo "** Trapped CTRL-C"
    exit 0
}

nohup /usr/sbin/sshd -D &

cassandra -f -R
