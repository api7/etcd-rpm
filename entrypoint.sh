#!/bin/bash

# mount cgroup
mkdir -p /sys/fs/cgroup/systemd
mount -t cgroup -o none,name=systemd cgroup /sys/fs/cgroup/systemd

exec /usr/sbin/init
