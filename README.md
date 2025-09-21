# Terbium Plus (tb-plus)

> **🚧 BETA NOTICE 🚧**  
> Terbium Plus is currently in **beta** and **has not been tested on Linux or macOS**.  
> If you are using one of these operating systems, you are on your own for now!  
> Community feedback and pull requests for cross-platform support are welcome.

---

A modern, static, self‑hostable WebOS designed for flexibility and extensibility. Terbium Plus offers multiple environments, user plans, robust maintenance options, and optional proxy/network features—all in a single deployable bundle.

- **Repository:** [github.com/ethantheDeveloper220/tb-plus](https://github.com/ethantheDeveloper220/tb-plus)

---

## 🚀 Quick Start (Local)

Serve the static files or open `index.html` using any development server.

### Docker (Recommended)

```bash
# Build the image
docker build -t tb-plus:latest .

# Run the container
docker run --rm -p 8080:80 tb-plus:latest

# Access in your browser:
# → http://localhost:8080/landing/
```

### Manual

You can also use any static file server (like [serve](https://www.npmjs.com/package/serve), Python's `http.server`, or similar) to host the files in this repo.

### More Options

- For full self-hosting, Docker Compose, and Wisp setup, see [`docs/self-hosting.md`](docs/self-hosting.md).

---

## ✨ Features

- **Modern UI:** Beautiful landing page, docs, pricing plans, and custom 404.
- **Environment Picker:** Switch between Normal, Beta, or Custom environments.
- **Flexible Plans:** Free (30m/session), Pro, and Ultimate tiers with plan-based access gating.
- **Owner/Admin Controls:** Owner unlock system and a full admin panel.
- **Maintenance Mode:** Maintenance overlay with bypass for admin/owner.
- **Optional Proxy:** Integrates with Wisp server for advanced proxy/networking features.
- **Self-Contained:** All static—easy to deploy, easy to customize.

---

## 🏗️ Self‑Hosting

See [`docs/self-hosting.md`](docs/self-hosting.md) for:

- Docker and Docker Compose instructions
- Static hosting tips
- Wisp/Ultraviolet proxy server setup

---

## 📦 Directory Structure

```
.
├── docs/                # Documentation for self-hosting, plans, etc.
├── public/              # Static web assets (HTML, CSS, JS)
├── src/                 # Source code (if applicable)
├── index.html           # Main entry point
└── ...                  # Additional resources
```

---

## 🤝 Contributing

Contributions are welcome!  
If you encounter issues—especially on Linux or macOS—please open an issue or submit a PR to help us improve cross-platform compatibility.

---

## 📜 License

This repository is provided **as-is**.  
See project files for third‑party licenses and further legal information.

---

**Terbium Plus** — Built for the future, deployable today.
