#!/bin/bash
set -e
if ! docker info >/dev/null 2>&1; then
    echo "ERROR: Docker is unavailable."
    exit 1
fi
logfile="$HOME/server-maintenance/maintenance.log"
containers=$(docker ps -a --format '{{.Names}}')
echo "===== DOCKER HEALTH REPORT ====="| tee -a "$logfile"
for container in $containers; do
    status=$(docker inspect -f '{{.State.Status}}' "$container")
    if [ "$status" != "running" ]; then
    echo "WARNING: $container is $status" | tee -a "$logfile"
fi
    health=$(docker inspect -f '{{if .State.Health}}{{.State.Health.Status}}{{else}}no healthcheck{{end}}' "$container")
    if [ "$health" = "unhealthy" ]; then
    echo "WARNING: $container is unhealthy" | tee -a "$logfile"
fi
    timestamp=$(date '+%Y-%m-%d %H:%M:%S')
    echo "$timestamp | $container | $status | $health" | tee -a "$logfile"
done
echo "===== REPORT COMPLETE =====" | tee -a "$logfile"
