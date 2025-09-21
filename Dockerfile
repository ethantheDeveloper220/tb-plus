# Static site served by nginx
FROM nginx:1.27-alpine

# Copy nginx config
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy site
COPY . /usr/share/nginx/html

# Healthcheck: ensure index is served
HEALTHCHECK --interval=30s --timeout=3s CMD wget -qO- http://localhost/landing/ >/dev/null || exit 1

