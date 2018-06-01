FROM haproxy:1.8.9-alpine
COPY haproxy.cfg /usr/local/etc/haproxy/
EXPOSE 80
