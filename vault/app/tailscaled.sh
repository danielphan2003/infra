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

mkdir -p /var/run/tailscale /var/cache/tailscale /var/lib/tailscale

echo "Starting Tailscale..."
exec tailscaled \
  --state=/var/lib/tailscale/tailscaled.state \
  --socket=/var/run/tailscale/tailscaled.sock