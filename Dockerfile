FROM golang:1.14-alpine as base
RUN apk add --no-cache git

FROM base as builder
RUN go get -u github.com/fmenezes/codeowners/cmd/codeownerslint

FROM alpine:latest
RUN apk add --no-cache git
COPY --from=builder /go/bin/codeownerslint /usr/local/bin/codeownerslint
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
