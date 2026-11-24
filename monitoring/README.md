# Server Monitoring System

## Overview

The homelab uses a self-hosted monitoring stack to collect, store and visualize server metrics and monitor service availability.

The monitoring stack runs as a separate Docker Compose project.

## Technologies

| Service | Technology | Responsibility |
|---|---|---|
| Metrics Collection | Node Exporter | Exposes host system metrics |
| Metrics Storage | Prometheus | Scrapes and stores time-series metrics |
| Visualization | Grafana | Displays metrics through dashboards |
| Availability Monitoring | Uptime Kuma | Checks service availability |

## Monitoring Architecture

### 1. Node Exporter

Node Exporter exposes system-level metrics from the Ubuntu server, including CPU, memory, disk and network information.

### 2. Prometheus

Prometheus periodically scrapes metrics from Node Exporter and itself.

The configured scrape interval is 15 seconds.

Metrics are stored as time-series data in Prometheus.

### 3. Grafana

Grafana connects to Prometheus as a data source and queries its stored metrics.

Dashboards display the collected information through visualizations.

### 4. Uptime Kuma

Uptime Kuma independently monitors the availability of services and provides status information.

## Data Flow

Node Exporter → Prometheus → Grafana

Uptime Kuma performs independent availability checks.

## Docker Networking

All four monitoring containers are connected to the `monitor_default` bridge network.

## Persistence

Prometheus and Grafana use named Docker volumes for persistent application data.

## Current Configuration

- Scrape interval: 15 seconds
- Prometheus port: 9090
- Grafana port: 3002 on the host
- Uptime Kuma port: 3001

## Project Goals

- Understand system-level monitoring.
- Collect and store time-series metrics.
- Build monitoring dashboards.
- Monitor service availability.
- Develop practical troubleshooting skills.
