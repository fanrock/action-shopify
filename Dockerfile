# start with official python/alpine base
FROM python:3.9.0-alpine3.12

RUN pip install six
RUN apk --no-cache add curl
RUN curl -s https://shopify.github.io/themekit/scripts/install.py | python

COPY "entrypoint.sh" "/entrypoint.sh"
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
