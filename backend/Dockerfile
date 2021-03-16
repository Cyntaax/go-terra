FROM golang:latest

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY go.mod go.sum ./

RUN go mod download

COPY . .

RUN go build -o bot

EXPOSE 3000

ENTRYPOINT ./bot