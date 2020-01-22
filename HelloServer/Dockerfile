FROM golang:1.13.6-alpine3.11
EXPOSE 8080
COPY ./server.go ./
RUN go build -o ./go-app ./server.go
USER nobody
ENTRYPOINT ["./go-app"]