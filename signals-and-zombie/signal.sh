#!/bin/bash

trap "echo 'SIGINT Skipped'" SIGINT

echo "Running PID $$"

while true; do
  sleep 1
done
EOF
