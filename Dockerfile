FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    bash \
    netcat-openbsd \
    fortune-mod \
    cowsay \
    && rm -rf /var/lib/apt/lists/*

ENV PATH="${PATH}:/usr/games"

WORKDIR /app

COPY . /app

RUN chmod +x wisecow.sh

EXPOSE 4499

CMD ["./wisecow.sh"]
