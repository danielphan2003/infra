# vault

Deploy [Vaultwarden], [Tailscale], and [Cloudflare Tunnel] on [Fly.io]

## Usage

Create a new app using `fly` command and replace the app name in `fly.toml.template` as well as replacing `fly.toml` with the template file.

## Environment variables

| Parameter | Function | Notes |
| :----: | --- | --- |
| `ADMIN_TOKEN` | Vaultwarden Admin Panel token | |
| `CF_ZONE_ID` | Cloudflare zone ID | See [github.com/docker-mods/universal-cloudflared] |
| `CF_ACCOUNT_ID` | Cloudflare account ID | See [github.com/docker-mods/universal-cloudflared] |
| `CF_API_TOKEN` | Cloudflare API token | See [github.com/docker-mods/universal-cloudflared] |
| `CF_TUNNEL_NAME` | Cloudflare tunnel name | See [github.com/docker-mods/universal-cloudflared] |
| `CF_TUNNEL_PASSWORD` | Cloudflare tunnel password | See [github.com/docker-mods/universal-cloudflared] |
| `CF_TUNNEL_CONFIG` | Cloudflare tunnel config | See [github.com/docker-mods/universal-cloudflared] |
| `DATABASE_ENDPOINT` | Database endpoint url | Example: `abc.xyz/table-name` |
| `DATABASE_OPTION` | Database options | Example: `?sslmode=verify-full&...` |
| `DATABASE_PASSWORD` | Database password | |
| `DATABASE_URL` | Database access string in the form of `postgresql://${DATABASE_USERNAME}:${DATABASE_PASSWORD}@${DATABASE_ENDPOINT}${DATABASE_OPTION}` | |
| `DATABASE_USERNAME` | Database username | |
| `PUSH_INSTALLATION_ID` | Push notifications ID | See [Vaultwarden Push Installation environment variables] |
| `PUSH_INSTALLATION_KEY` | Push notifications key | See [Vaultwarden Push Installation environment variables] |
| `SMTP_PASSWORD` | Mail server password | |
| `SMTP_USERNAME` | Mail server username | |
| `TAILSCALE_AUTHKEY` | Tailscale Auth key | |
| `TS_AUTHKEY_VAULT` | Alias to `TAILSCALE_AUTHKEY` | |
| `TS_VAULT_ADMIN_TAILNET` | Public domain of the vault | |
| `TS_VAULT_ADMIN_USER` | Admin user of the vault | |

[Vaultwarden]: https://github.com/dani-garcia/vaultwarden
[Tailscale]: https://tailscale.com
[Cloudflare Tunnel]: https://developers.cloudflare.com/cloudflare-one/connections/connect-networks/
[Fly.io]: https://fly.io
[github.com/docker-mods/universal-cloudflared]: https://github.com/linuxserver/docker-mods/blob/universal-cloudflared/README.md
[Vaultwarden Push Installation environment variables]: https://github.com/dani-garcia/vaultwarden/blob/ae3a153bdb062414402ec94901fabb1105838674/.env.template#L79-L86
