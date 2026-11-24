logfile="$HOME/server-maintenance/maintenance.log"
usage=$(df -h / | tail -1 | awk '{print $5}' | tr -d '%')
if [ "$usage" -ge 80 ]; then
    echo "WARNING: Disk usage is at ${usage}%!"
else
    echo "Disk usage is healthy: ${usage}% used."
fi
echo "$(date '+%Y-%m-%d %H:%M:%S') | Disk usage: ${usage}% | Status: $([ "$usage" -ge 80 ] && echo "WARNING" || echo "HEALTHY")" >> "$logfile"
