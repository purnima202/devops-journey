# Dockerfile Demo

## What I Learned

In this lab, I learned the basics of creating a Docker image using a Dockerfile.

## Concepts Practiced

- Dockerfile
- Docker image
- Docker container
- `FROM`
- `COPY`
- `EXPOSE`
- `docker build`
- `docker run`

## Files

### Dockerfile

Contains the instructions used to build the Docker image.

### index.html

A simple HTML page that is copied into the Docker container.

## Commands Used

### Build Docker Image

```bash
docker build -t myimage .
```

### Check Docker Images

```bash
docker images
```

### Run Container

```bash
docker run -d -p 8080:80 myimage
```

### Check Running Containers

```bash
docker ps
```

### Check All Containers

```bash
docker ps -a
```

### Stop Container

```bash
docker stop <container-id>
```

### Remove Container

```bash
docker rm <container-id>
```

### Remove Image

```bash
docker rmi myimage
```

## Docker Flow

```text
Dockerfile
    ↓
Docker Image
    ↓
Docker Container
```

## Key Learning

A Dockerfile contains instructions for building a Docker image.

The Docker image is then used to create and run a Docker container.

The `COPY` instruction is used to copy files from the build context into the image.

The `EXPOSE` instruction documents the port that the application uses inside the container.