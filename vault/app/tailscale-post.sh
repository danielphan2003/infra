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
unset TS_AUTHKEY_VAULT
unset TS_VAULT_ADMIN_TAILNET
unset TS_VAULT_ADMIN_USER

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
