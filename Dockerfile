FROM golang:alpine

RUN echo "$PROXY_CERT" > /etc/ssl/certs/proxy-cert.crt

WORKDIR /go/src/go-sample
COPY . /go/src/go-sample

ENV GO111MODULE=on
ENTRYPOINT [ "go" ]
CMD [ "run", "hello.go" ]
