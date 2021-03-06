#!/bin/bash

sudo cat /sys/kernel/debug/tracing/trace > l.log
sudo cat /sys/kernel/debug/tracing/trace | grep 'overflow'> ./log/over.log
sudo cat /sys/kernel/debug/tracing/trace | grep 'ERR'> ./log/err.log
sudo cat /sys/kernel/debug/tracing/trace | grep 'throttle'> ./log/throttle.log
sudo cat /sys/kernel/debug/tracing/trace | grep 'perf_event_count' > ./log/perf.log
sudo cat /sys/kernel/debug/tracing/trace | grep 'master'> ./log/master.log
sudo cat /sys/kernel/debug/tracing/trace | grep 'count=' > ./log/count.log
sudo cat /sys/kernel/debug/tracing/trace | grep 'slave' > ./log/slave.log
sudo cat /sys/kernel/debug/tracing/trace | grep 'MSG' > ./log/msg.log
sudo cat /sys/kernel/debug/tracing/trace | grep 'exit' > ./log/ex.log
sudo dmesg > log.txt

