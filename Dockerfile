FROM golang:1.15.2

WORKDIR /app
ENV GO111MODULE=on GOOS=linux GOARCH=amd64

COPY . .
RUN make run DIR=/app
