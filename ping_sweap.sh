#!/bin/sh

for i in 192.168.13.{1..255}; do ping -c 1 $i > /dev/null; [ $? -eq 0 ]&&echo "Node with IP $i is UP." || echo "Node with IP $i is DOWN."; done
