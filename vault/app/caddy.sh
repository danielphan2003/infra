#! /usr/bin/with-contenv bash
# Unset Cloudflare environment variables
unset CF_ACCOUNT_ID
unset CF_API_TOKEN
unset CF_TUNNEL_NAME
unset CF_TUNNEL_PASSWORD
unset CF_USER
unset CF_ZONE_ID

# Unset Vaultwarden environment variables
unset DATABASE_ENDPOINT
unset DATABASE_OPTION
unset DATABASE_PASSWORD
unset DATABASE_URL
unset DATABASE_USERNAME
unset PUSH_INSTALLATION_ID
unset PUSH_INSTALLATION_KEY
unset SMTP_PASSWORD
unset SMTP_USERNAME

# Unset Tailscale environment variables
unset TAILSCALE_AUTHKEY
unset TS_AUTHKEY_VAULT
unset TS_VAULT_ADMIN_TAILNET
unset TS_VAULT_ADMIN_USER

mkdir -p /data/caddy/data /data/caddy/config

echo "Starting Caddy... "
LOG_FILE="/data/caddy/caddy_$(date +'%Y-%m-%d_%H-%M-%S').log"
export LOG_FILE
exec caddy run --config /app/Caddyfile
