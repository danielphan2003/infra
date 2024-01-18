#! /usr/bin/with-contenv bash

mkdir -p /var/run/tailscale /var/cache/tailscale /var/lib/tailscale

echo "Starting Tailscale..."
exec tailscaled \
  --state=/var/lib/tailscale/tailscaled.state \
  --socket=/var/run/tailscale/tailscaled.sock