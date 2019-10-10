# Start from the latest golang base image
FROM golang:latest

# Set the Current Working Directory inside the container
COPY main.go /app/

WORKDIR /app


RUN go build -o main .

EXPOSE 8080

CMD ["./main"]
