FROM ghcr.io/benzine-framework/php:nginx-8.0 AS redirector
RUN rm /etc/nginx/sites-enabled/*
COPY NginxHttpsRedirector /etc/nginx/sites-enabled

FROM ghcr.io/benzine-framework/php:nginx-8.0 AS example-app
RUN mkdir -p /app/public && \
    echo "<h1>Hello!</h1>" > /app/public/index.html;