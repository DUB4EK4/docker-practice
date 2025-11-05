FROM golang:1.21 AS builder

WORKDIR /app

COPY main.go .

RUN go build -o app main.go

FROM alpine:latest

RUN apk add --no-cache ca-certificates

COPY --from=builder /app/app /app/app

RUN chmod +x /app/app

CMD ["/app/app"]
