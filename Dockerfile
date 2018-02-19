FROM haproxy:1.8.4-alpine
COPY haproxy.cfg /usr/local/etc/haproxy/
EXPOSE 80
