#!/bin/bash
FILE="/home/oscar/dev/Grafana-docker/test.txt"
METRIC_FILE="./textfile_collector/test.prom"

if [ -f "$FILE" ]; then
  echo "test_file_exists{file=\"test.txt\"} 1" > $METRIC_FILE
else
  echo "test_file_exists{file=\"test.txt\"} 0" > $METRIC_FILE
fi

