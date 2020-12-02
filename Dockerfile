# start with official python/alpine base
FROM python:2.7.15-alpine3.7

RUN apk --no-cache add curl
RUN curl -s https://shopify.github.io/themekit/scripts/install.py | python

COPY "entrypoint.sh" "/entrypoint.sh"
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
