# Self‑hosting Terbium (tb-plus)

This app is a static site. You can self‑host with Docker or any static host.

## Option A: Docker (nginx)

Prereqs: Docker / Docker Desktop

Build and run:

```bash
# from repo root
docker build -t tb-plus:latest .
docker run --rm -p 8080:80 tb-plus:latest
```

Or with docker‑compose:

```bash
docker-compose up -d --build
# App → http://localhost:8080/landing/
```

The container serves files from `/usr/share/nginx/html` with `nginx.conf`.

## Option B: Static hosting

Any static host works (Vercel, Netlify, GitHub Pages, S3+CDN). Upload the repo as static files. For Vercel, keep `vercel.json` routes.

## Wisp (Ultraviolet proxy) optional

Some features (in‑browser networking) may require a Wisp server.
- Example container (uncomment in `docker-compose.yml`):
```yaml
wisp:
  image: ghcr.io/tomphttp/wisp:latest
  ports:
    - "8081:8080"
  restart: unless-stopped
```
- Then set your client to use `ws://localhost:8081` or `wss://your-domain`.
- In `uv/uv.config.js`, ensure prefix and sw paths are correct. No server change is needed for static hosting.

## Service workers

Service workers must be served at top‑level paths. The nginx config exposes:
- `/anura-sw.js`, `/uv/sw.js`, `/uv/uv.sw.js` with `Cache-Control: no-store`.

## Maintenance & plans (optional)

Client‑side feature gating and maintenance overlays are controlled via `localStorage` keys. For production, wire a real backend or admin UI if needed.

## Custom domains & HTTPS

Front with a reverse proxy/ingress that terminates TLS (e.g., Caddy, Nginx Proxy Manager, Traefik) and route to the container on port 80.

## Environment variables

None required for the static site. If you deploy Wisp behind TLS, update the client to `wss://` endpoint.

## Healthchecks

The Dockerfile defines a healthcheck hitting `/landing/`.

---

Need help? Open an issue in the repo.
