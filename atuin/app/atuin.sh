#! /usr/bin/with-contenv bash
# Unset Cloudflare environment variables
unset CF_ACCOUNT_ID
unset CF_API_TOKEN
unset CF_TUNNEL_NAME
unset CF_TUNNEL_PASSWORD
unset CF_USER
unset CF_ZONE_ID

# Unset Tailscale environment variables
unset TAILSCALE_AUTHKEY

mkdir -p /data/config

echo "Starting Atuin..."
exec atuin server start
