FROM debian:11-slim

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    git wget curl rsync openssh-client ca-certificates \
  && rm -rf /var/lib/apt/lists/*

COPY *.sh /
RUN chmod +x /*.sh

ENTRYPOINT ["/entrypoint.sh"]
