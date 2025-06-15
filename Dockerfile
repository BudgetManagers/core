FROM golang:1.21-alpine

WORKDIR /app

# Copy dependency files
COPY go.mod go.sum ./
RUN go mod download

# Copy source code
COPY . .

# Run tests by default
CMD ["go", "test", "./..."]
