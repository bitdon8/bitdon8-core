FROM golang:1.9-alpine
MAINTAINER bitdon8 "info@bitdon8.com"

COPY ./ $GOPATH/src/github.com/trey-jones/xmrwasp/

WORKDIR $GOPATH/src/github.com/trey-jones/xmrwasp

RUN go install

WORKDIR /config
RUN touch config.json
VOLUME /config

ENTRYPOINT ["xmrwasp"]
