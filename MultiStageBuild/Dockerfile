# Stage 1 (build app)
FROM golang:1.13.6-alpine3.11 as builder
COPY ./server.go ./
RUN go build -o /go-app ./server.go

# Stage 2 (build image which contains exe)
FROM alpine:3.9.5
EXPOSE 8080
COPY --from=builder /go-app .
ENTRYPOINT ["./go-app"]
