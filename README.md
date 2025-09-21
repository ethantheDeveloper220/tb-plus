# Terbium Plus (tb-plus)

A static, self‑hostable WebOS with apps, environments (Normal/Beta/Custom), plans (Free/Pro/Ultimate), maintenance mode, and an optional Wisp/Ultraviolet proxy.

- Repo: https://github.com/ethantheDeveloper220/tb-plus

## Quick start (local)

Serve the static files or open `index.html` via a dev server.

```bash
# Docker quick start
docker build -t tb-plus:latest .
docker run --rm -p 8080:80 tb-plus:latest
# → http://localhost:8080/landing/
```

More options and Wisp setup in `docs/self-hosting.md`.

## Features

- Modern landing page, docs, plans, and 404
- Environment picker (Normal/Beta/Custom)
- Plan gating (Free 30m/session, Pro, Ultimate)
- Owner unlock and Admin panel
- Maintenance mode overlay (only admin/owner bypass)
- Optional Wisp server for proxy/network features

## Self‑hosting

See `docs/self-hosting.md` for Docker, compose, and static hosting.

## License

This repository is provided as‑is. See project files for third‑party licenses.
