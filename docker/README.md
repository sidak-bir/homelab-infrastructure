# Docker Infrastructure

## Overview

The homelab uses Docker Compose to deploy and manage self-hosted applications.

The configuration is organized into two independent Compose projects:

- `~/docker` — Core applications and network services.
- `~/monitor` — Monitoring and availability services.

## Compose Organization

Each project uses a parent Compose file with the Docker Compose `include` directive.

Individual services have their own directories and Compose configuration files.

### Core Infrastructure

- Portainer
- Homepage
- Jellyfin
- Tailscale
- Pi-hole

### Monitoring Infrastructure

- Prometheus
- Node Exporter
- Grafana
- Uptime Kuma

## Why This Structure?

This organization provides several benefits:

- Each service has an independent Compose configuration.
- Service configurations are easier to maintain.
- Related services are grouped into separate projects.
- The parent Compose file provides a central way to manage each project.

## Networking

The infrastructure uses multiple Docker networking modes:

- Bridge networking for application and monitoring containers.
- Macvlan networking for Pi-hole.
- Host networking for Tailscale.

## Storage

The containers use a combination of:

- Bind mounts for host directories.
- Named Docker volumes for persistent application data.

Jellyfin uses host directories for its media libraries and configuration.

## Security

Configuration files published in this repository will be sanitized. Credentials, authentication keys, private application data and database files must not be committed.
