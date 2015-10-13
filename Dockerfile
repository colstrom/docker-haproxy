FROM colstrom/alpine:main
RUN apk-install haproxy
EXPOSE 5000
ENTRYPOINT ["/usr/sbin/haproxy", "-db", "-f", "/etc/haproxy/haproxy.cfg"]
