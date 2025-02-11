FROM golang:1.16-alpine

WORKDIR /app

COPY . ./
RUN go mod init mod
RUN go mod tidy
RUN go build -o main main.go

EXPOSE 8000

CMD ./main
