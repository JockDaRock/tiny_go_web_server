FROM golang:alpine AS build-env

COPY /tiny_go_web_server.go .

RUN go build -o tiny_go_web_server tiny_go_web_server.go && ls && pwd


FROM alpine

WORKDIR /

COPY --from=build-env /go/tiny_go_web_server .

COPY /tiny_go_web_server .

EXPOSE 8282

CMD  ["./tiny_go_web_server"]
