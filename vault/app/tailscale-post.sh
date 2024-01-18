#! /usr/bin/with-contenv bash

sleep 10

echo "Initializing Tailscale..."

tailscale --socket=/var/run/tailscale/tailscaled.sock \
  up \
  --authkey="${TAILSCALE_AUTHKEY}" \
  --hostname="${TAILSCALE_HOSTNAME}" \
  --ssh

echo >> /etc/hosts
echo "# Set Tailscale dns" >> /etc/hosts
echo "$(tailscale ip -4) $TAILSCALE_DOMAIN" >> /etc/hosts
echo "$(tailscale ip -6) $TAILSCALE_DOMAIN" >> /etc/hosts
