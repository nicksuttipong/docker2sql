FROM golang:1.17-alpine
RUN mkdir /app
ADD ../ /app/
WORKDIR /app

COPY go.mod go.sum ./
RUN go mod download && go mod verify

RUN go get -v github.com/cosmtrek/air
ENTRYPOINT ["air", "go", "run", "main.go"]