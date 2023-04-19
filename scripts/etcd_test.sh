#!/bin/bash

# Check if the script is run with one argument
if [[ $# -ne 1 ]]; then
  echo "Usage: $0 <version>"
  exit 1
fi

# Check the etcd version
echo "Checking etcd version..."
result=$(curl -s http://localhost:2379/version)
if echo "${result}" | grep -q "$1"; then
  echo "Etcd version check passed"
else
  echo "Etcd version check failed"
  exit 1
fi

# Write and read a key-value pair using etcdctl
echo "Writing and reading a key-value pair using etcdctl..."
docker exec centos7Instance etcdctl put foo bar
value=$(docker exec centos7Instance etcdctl get foo | tail -n 1)
if [[ "${value}" == "bar" ]]; then
  echo "Etcd key-value test passed"
else
  echo "Etcd key-value test failed"
  exit 1
fi
