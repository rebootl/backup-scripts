#!/bin/bash
#
# create lists for testfiles using current working directory
#

CONF="backup-conf/backup-test.conf"

. "$CONF"

for ((y=1; y<=15 ;y++)); do
    echo "rotate year $y"
    ./rotate-yearly "$CONF"
    for ((m=1; m<=12 ;m++)); do
        echo "rotate month $m"
        ./rotate-monthly "$CONF"
        for ((w=1; w<=4 ;w++)); do
            echo "rotate week $w"
            ./rotate-weekly "$CONF"
            for ((d=1; d<=7 ;d++)); do
                echo "backup day $d"
                ./backupto-local "$CONF"
                echo "rotate day $d"
                ./rotate-daily "$CONF"
                #ls "$DEST_PATH"
            done
        done
    done
done
