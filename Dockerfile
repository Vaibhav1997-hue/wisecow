FROM alpine:latest

RUN apk add --no-cache bash netcat-openbsd fortune cowsay

ENV PATH="${PATH}:/usr/games"

WORKDIR /app

COPY . /app

RUN chmod +x wisecow.sh

EXPOSE 4499

CMD ["./wisecow.sh"]
