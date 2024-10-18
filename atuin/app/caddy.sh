#! /usr/bin/with-contenv bash
# Unset Cloudflare environment variables
unset CF_ACCOUNT_ID
unset CF_API_TOKEN
unset CF_TUNNEL_NAME
unset CF_TUNNEL_PASSWORD
unset CF_USER
unset CF_ZONE_ID

# Unset Vaultwarden environment variables
unset ATUIN_DB_ENDPOINT
unset ATUIN_DB_OPTION
unset ATUIN_DB_PASSWORD
unset ATUIN_DB_URI
unset ATUIN_DB_USERNAME

# Unset Tailscale environment variables
unset TAILSCALE_AUTHKEY

mkdir -p /data/caddy/data /data/caddy/config

echo "Starting Caddy... "
LOG_FILE="/data/caddy/caddy_$(date +'%Y-%m-%d_%H-%M-%S').log"
export LOG_FILE
exec caddy run --config /app/Caddyfile
