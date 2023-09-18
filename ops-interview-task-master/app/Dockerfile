# Using official Golang image
FROM golang:1.13

# Setting working directory to /app
WORKDIR /app

# Copying current directory currents into /app
COPY . /app

# Dependencies
RUN go get github.com/go-chi/chi
RUN go get github.com/gomodule/redigo
RUN go get github.com/knadh/koanf v0.6.1

# Build the application
RUN go build -o main .

# Expose the application 
EXPOSE 8080

# Environment variables
ENV DEMO_APP_ADDR:8080
ENV DEMO_REDIS_ADDR:6379

# Command to run
CMD ["./app/main"]