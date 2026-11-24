# Homelab Infrastructure Architecture

## Overview

The homelab runs on Ubuntu Server and uses Docker Compose to manage self-hosted applications, monitoring services and network infrastructure.

## Infrastructure Components

| Category | Services | Purpose |
|---|---|---|
| Media | Jellyfin | Self-hosted media streaming |
| Management | Portainer, Homepage | Container management and service dashboard |
| Network | Pi-hole | Network-wide DNS filtering |
| Remote Access | Tailscale | Secure remote access |
| Monitoring | Prometheus, Node Exporter, Grafana | System metrics collection and visualization |
| Availability | Uptime Kuma | Service availability monitoring |

## Docker Network Architecture

| Docker Network | Driver | Connected Containers |
|---|---|---|
| docker_default | Bridge | Homepage, Portainer, Jellyfin |
| monitor_default | Bridge | Prometheus, Node Exporter, Grafana, Uptime Kuma |
| docker_pihole_network | Macvlan | Pi-hole |
| host | Host | Tailscale |

Additional Docker networks:
- `homepage_default` and `kuma_default` currently have no connected containers.
- `bridge` and `none` are Docker's built-in networks.

## Monitoring Data Flow

1. Node Exporter exposes host system metrics.
2. Prometheus scrapes metrics from Node Exporter and itself.
3. Grafana uses Prometheus as a data source to visualize metrics.
4. Uptime Kuma independently monitors service availability.

## Remote Access

Tailscale runs using host networking and provides secure remote access to the homelab.

## Network Services

Pi-hole runs on a dedicated macvlan network with its own LAN IP address, separate from the host's regular Docker bridge networking.

## Notes

This document describes the current running environment. Network membership and service configuration may change as the homelab evolves.
