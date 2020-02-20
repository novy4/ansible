#!/bin/bash

uptime=$(journalctl -u noia -n 5 -e | grep online | tail -n 1 | sed -n -e 's/^.*for //p' | cut -d' ' -f1)

echo $uptime


