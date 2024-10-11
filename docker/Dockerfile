FROM golang:alpine AS builder

WORKDIR /tmp

RUN apk update && apk add --no-cache g++ gcc git libpcap-dev
RUN git clone https://github.com/HausnerR/phev2mqtt.git
RUN cd /tmp/phev2mqtt && /usr/local/go/bin/go build

FROM alpine:latest
RUN apk update && apk add --no-cache libpcap-dev

COPY --from=builder /tmp/phev2mqtt/phev2mqtt /opt/phev2mqtt

COPY run.sh /opt
RUN chmod a+x /opt/run.sh

CMD [ "/opt/run.sh" ]
