FROM docker.io/zmkfirmware/zmk-build-arm:stable

RUN apt-get update && apt-get install -y --no-install-recommends python3-yaml && rm -rf /var/lib/apt/lists/*

COPY scripts/build.sh /usr/local/bin/build.sh
RUN chmod +x /usr/local/bin/build.sh

ENTRYPOINT ["/usr/local/bin/build.sh"]