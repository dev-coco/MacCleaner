#!/bin/bash

#Release RAM
#sudo purge > /dev/null 2>&1
#Because the sudo command requires a startup password.

#Clean DNS Caches
dscacheutil -flushcache > /dev/null 2>&1
