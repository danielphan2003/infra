#! /usr/bin/with-contenv bash

mkdir -p /data/caddy/data /data/caddy/config

echo "Starting Caddy... "
LOG_FILE="/data/caddy/caddy_$(date +'%Y-%m-%d_%H-%M-%S').log"
export LOG_FILE
exec caddy run --config /app/Caddyfile
