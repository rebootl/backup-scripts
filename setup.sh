#!/bin/bash
#
# create lists for testfiles using current working directory
#

echo "$(pwd)/testfiles/test" > backup-test.list
echo "$(pwd)/testfiles/test2" >> backup-test.list

echo "$(pwd)/testfiles/test2/lulu" > backup-test-excludes.list

# copy config dir and files if not exists
if [ ! -d "backup-conf" ]; then
    cp -r backup-conf-orig backup-conf
fi
if [ ! -f "backup-${HOSTNAME}.list" ]; then
    cp backup-example.list "backup-${HOSTNAME}.list"
fi
if [ ! -f "backup-${HOSTNAME}-excludes.list" ]; then
    cp backup-example.list "backup-${HOSTNAME}-excludes.list"
fi
