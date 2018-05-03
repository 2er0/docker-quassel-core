FROM golang:alpine

RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh

WORKDIR /go/src/github.com/2er0/goHttpProxy
RUN git clone https://github.com/2er0/goHttpProxy.git .

RUN go-wrapper download
RUN go-wrapper install

CMD ["go-wrapper", "run"]
