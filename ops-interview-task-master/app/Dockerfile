# Using official Golang image
FROM golang:1.13

# Setting working directory to /app
WORKDIR /app

# Copying current directory currents into /app
COPY . .

# Dependencies
RUN go get github.com/go-chi/chi
RUN go get github.com/gomodule/redigo
RUN go get github.com/knadh/koanf

# Build the application
RUN go build -o main .

# Expose the application 
EXPOSE 8080
# EXPOSE 6379

# Environment variables
ENV DEMO_APP_ADDR="8080"
# ENV DEMO_REDIS_ADDR="6379"

# Command to run
CMD ["./main"]