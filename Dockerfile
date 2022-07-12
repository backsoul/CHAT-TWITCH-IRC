FROM golang:1.16-alpine as chat

WORKDIR /chat

COPY go.mod ./
RUN go mod download

COPY . .

RUN go build -o chat ./main.go 

EXPOSE 3000

CMD [ "./chat" ]