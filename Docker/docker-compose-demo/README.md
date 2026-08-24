# Docker Compose Demo

## What I Learned

In this lab, I learned the basics of Docker Compose.

Docker Compose is used to define and run applications using multiple Docker containers.

## Files

### compose.yaml

Contains the Docker Compose configuration.

### dockerfile

Contains the instructions used to build the Docker image.

### index.html

Simple HTML page used by the application.

## Docker Compose Concepts

- `services`
- `build`
- `ports`
- Docker Compose configuration
- Building images with Compose
- Running containers with Compose

## Commands Used

### Start the Application

```bash
docker compose up -d
```

### Build and Start

```bash
docker compose up -d --build
```

### Check Running Services

```bash
docker compose ps
```

### View Logs

```bash
docker compose logs
```

### View Running Containers

```bash
docker ps
```

### Stop the Application

```bash
docker compose down
```

## Docker Compose Flow

```text
compose.yaml
     ↓
Docker Image
     ↓
Docker Container
     ↓
Application
```

## Key Learning

Docker Compose makes it easier to manage containers using a configuration file.

Instead of running many Docker commands manually, we can define the required configuration in `compose.yaml` and manage the application using Docker Compose commands.