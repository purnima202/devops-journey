# Node.js Multi-stage Docker Build

## What I Learned

In this lab, I learned how to use a multi-stage Docker build.

Multi-stage builds allow us to use multiple stages in a Dockerfile and copy only the required files into the final image.

## Why Use Multi-stage Builds?

A multi-stage build can help us create a smaller and cleaner final Docker image.

The build environment may contain tools and dependencies that are not required when running the application.

## Build Flow

```text
Build Stage
     |
     | Build application
     ↓
Production Stage
     |
     | Copy required files
     ↓
Final Docker Image
```

## Files

### Dockerfile

Contains the multiple stages used to build the Docker image.

### app.js

Node.js application file.

### package.json

Contains the Node.js project configuration and dependencies.

### .dockerignore

Specifies files and folders that should not be sent to the Docker build context.

## Multi-stage Dockerfile Concept

A Dockerfile can contain more than one `FROM` instruction.

For example:

```dockerfile
FROM node:latest AS build

# Build stage
```

Then another stage can be used for the final application:

```dockerfile
FROM node:latest

# Final stage
```

Files required from the previous stage can be copied using:

```dockerfile
COPY --from=build ...
```

## Commands Used

### Build Docker Image

```bash
docker build -t node-multi-stage .
```

### Run Container

```bash
docker run -d -p 3000:3000 node-multi-stage
```

### Check Running Containers

```bash
docker ps
```

### View Container Logs

```bash
docker logs <container-id>
```

### Stop Container

```bash
docker stop <container-id>
```

## Key Learning

Multi-stage builds separate the build environment from the final runtime image.

This helps keep the final image smaller and avoids including unnecessary build tools and files.