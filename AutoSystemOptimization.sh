#!/bin/bash

#Release RAM
sudo purge > /dev/null 2>&1

#Clean DNS Caches
dscacheutil -flushcache > /dev/null 2>&1
