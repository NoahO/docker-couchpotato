FROM linuxserver/couchpotato

RUN apk add --no-cache php-cli && \
    python -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip install --upgrade pip setuptools && \
    rm -r /root/.cache

COPY 20-couchpotato /etc/cont-init.d/
COPY phpsed.php /
COPY phpmatchecho.php /

HEALTHCHECK CMD curl -f http://localhost:5050 || exit 1