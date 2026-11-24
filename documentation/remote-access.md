# Secure Remote Access

## Overview

The homelab uses Tailscale to provide secure remote access to services running on the Ubuntu Server.

Tailscale creates an encrypted private network, called a tailnet, between authenticated devices.

## How It Works

- Tailscale runs in a Docker container on the Ubuntu Server.
- The container uses host networking.
- The server joins the user's private Tailscale network.
- Authenticated devices can connect to the server using its Tailscale IP address.
- Services can be accessed remotely without exposing their ports directly to the public internet.

## Networking Configuration

The Tailscale container uses:

- Docker host networking.
- Persistent state storage.
- Subnet routing configuration for `192.168.1.0/24`.

## Benefits

- Encrypted remote connectivity.
- Private access between authenticated devices.
- No need to expose every application port publicly.
- Convenient remote administration of the homelab.

## Security Considerations

- Authentication keys should never be committed to version control.
- Tailscale state and identity files must remain private.
- Only trusted devices should be authorized to join the tailnet.
- Remote access should be protected through appropriate device and account security.

## Learning Outcomes

- Understanding VPNs and encrypted networking.
- Understanding private mesh networks.
- Docker host networking.
- Remote Linux server administration.
- Subnet routing concepts.
