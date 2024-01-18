#! /usr/bin/with-contenv bash

mkdir -p /data/vault

echo "Starting Vaultwarden..."
exec vaultwarden
