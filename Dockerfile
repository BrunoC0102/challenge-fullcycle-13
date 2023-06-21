FROM golang

WORKDIR /usr/src/goapp

COPY go.mod ./

RUN go mod verify

COPY . .

RUN go build ./...

CMD [ "./challenge-fullcycle-13" ]