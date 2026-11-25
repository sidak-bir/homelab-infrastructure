# Server Maintenance Automation

## Overview

This project contains Bash scripts and system-level configurations used to automate routine maintenance and health checks on an Ubuntu Server homelab.

## 1. Disk Usage Monitoring

Script: `disk-check.sh`

Responsibilities:

- Checks disk usage of the root filesystem (`/`).
- Uses `df` to retrieve disk usage.
- Displays a warning when usage reaches 80%.
- Records timestamped results in a maintenance log.

## 2. Docker Health Monitoring

Script: `docker-health.sh`

Responsibilities:

- Checks Docker daemon availability.
- Lists all containers, including stopped containers.
- Checks container running states.
- Checks Docker health-check status where configured.
- Reports stopped or unhealthy containers.
- Records timestamped results in a maintenance log.

## 3. Scheduled Execution

The Docker health script is scheduled through cron.

Current schedule:

- Every day at 14:00 (2 PM).
- Executes `~/server-maintenance/docker-health.sh`.

## 4. System Log Management

The server uses a systemd-journald drop-in configuration to limit journal storage.

Configured limits:

- Maximum journal storage: 500 MB.
- Minimum free disk space: 1 GB.
- Maximum retention period: 30 days.

## 5. Docker Log Rotation

Docker logging is configured with the `json-file` driver.

Configured limits:

- Maximum log file size: 10 MB.
- Maximum number of log files per container: 3.

This prevents container logs from growing without limits.

## Technologies Used

- Bash
- Linux command-line utilities
- Docker CLI
- Cron
- systemd-journald
- Docker logging configuration

## Learning Outcomes

- Linux disk monitoring.
- Bash scripting and automation.
- Docker container inspection.
- Scheduled task management.
- Linux journal management.
- Docker log rotation.
