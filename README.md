# Self-Hosted Homelab Infrastructure

A personal homelab built using Ubuntu Server and Docker Compose to explore Linux system administration, containerization, networking, infrastructure monitoring and server maintenance automation.

## Overview

This project documents a self-hosted infrastructure environment designed to run useful home services while developing practical IT infrastructure and system administration skills.

The environment includes containerized applications, secure remote access, centralized monitoring and automated server maintenance.

## Infrastructure

- **Operating System:** Ubuntu Server
- **Containerization:** Docker and Docker Compose
- **Remote Access:** Tailscale
- **Networking:** Pi-hole, Docker networking
- **Monitoring:** Prometheus, Node Exporter, Grafana, Uptime Kuma
- **Management:** Portainer, Homepage
- **Media Server:** Jellyfin
- **Automation:** Bash scripting and cron

## Project Components

| Component | Technologies | Purpose |
|---|---|---|
| Containerized Infrastructure | Docker, Compose | Run and manage self-hosted applications |
| Monitoring System | Prometheus, Node Exporter, Grafana | Collect and visualize server metrics |
| Availability Monitoring | Uptime Kuma | Monitor service availability |
| Remote Access | Tailscale | Securely access services remotely |
| Network Services | Pi-hole | Network-wide DNS filtering |
| Server Maintenance | Bash, cron | Automate maintenance and health checks |

## Repository Structure

```text
homelab-infrastructure/
├── architecture/
├── docker/
├── monitoring/
├── server-maintenance/
├── documentation/
└── .github/
    └── workflows/
```

## Goals

- Gain practical Linux administration experience.
- Understand Docker and container management.
- Learn networking and secure remote access.
- Implement infrastructure monitoring.
- Automate recurring server maintenance tasks.
- Develop infrastructure automation and CI/CD skills.

## Documentation

Detailed setup instructions, architecture diagrams, configurations and troubleshooting notes will be added as the project develops.

## Disclaimer

This is a personal learning project. Configuration files published here will be sanitized to exclude credentials, private keys, personal data and application databases.
