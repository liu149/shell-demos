#!/usr/bin/bash
ip=8.8.8.8
ping -c1 $ip && echo "$ip is up" || "ip is down"