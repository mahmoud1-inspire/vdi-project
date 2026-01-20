#!/bin/bash

NAMESPACE=${1:-guacamole}   # default namespace guacamole
INTERVAL=${2:-10}           # interval in seconds

echo "Monitoring pods in namespace: $NAMESPACE every $INTERVAL seconds"
echo "Press Ctrl+C to stop"

while true; do
    echo "---- $(date) ----"
    kubectl top pods -n $NAMESPACE --no-headers | awk '{printf "%-30s CPU: %-5s  MEM: %-5s\n", $1, $2, $3}'
    sleep $INTERVAL
done

