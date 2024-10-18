#! /usr/bin/with-contenv bash
# Unset Cloudflare environment variables
unset CF_ACCOUNT_ID
unset CF_API_TOKEN
unset CF_TUNNEL_NAME
unset CF_TUNNEL_PASSWORD
unset CF_USER
unset CF_ZONE_ID

# Unset Atuin environment variables
unset ATUIN_DB_ENDPOINT
unset ATUIN_DB_OPTION
unset ATUIN_DB_PASSWORD
unset ATUIN_DB_URI
unset ATUIN_DB_USERNAME

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
