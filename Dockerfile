FROM weyforth/nginx-basic-auth-proxy:1.0.2

MAINTAINER Mike Farrow <contact@mikefarrow.co.uk>

# Apply Nginx configuration
ADD config/nginx.conf /opt/etc/nginx.conf

ENV PROXY_PASS registry:5000

ENTRYPOINT ["/opt/bin/nginx-start.sh"]
