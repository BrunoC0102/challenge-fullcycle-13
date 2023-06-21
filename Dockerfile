FROM golang:alpine as builder

WORKDIR /usr/src/goapp

COPY . .

RUN CGO_ENABLED=0 go build -o /goapp main.go

FROM scratch

COPY --from=builder /goapp /goapp

CMD [ "./goapp" ]