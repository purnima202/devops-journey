# Docker Volume

## What I Learned

In this lab, I learned how Docker volumes are used to store and persist data.

A Docker volume allows data to exist separately from the container.

## Why Do We Need Volumes?

Containers are temporary. If a container is deleted, data stored only inside the container can also be lost.

Docker volumes help us keep important data even when the container is removed.

## Important Concept

```text
Docker Container
       ↓
   Docker Volume
       ↓
   Persistent Data
```

## Files

- `container.txt` - File used for container practice
- `test.txt` - File used for volume practice
- `windows-file.txt` - File used for bind mount/file sharing practice

## Useful Commands

### List Docker Volumes

```bash
docker volume ls
```

### Create a Volume

```bash
docker volume create myvolume
```

### Inspect a Volume

```bash
docker volume inspect myvolume
```

### Run a Container with a Volume

```bash
docker run -v myvolume:/data <image>
```

### Check Running Containers

```bash
docker ps
```

### Remove a Volume

```bash
docker volume rm myvolume
```

## Volume vs Container

| Docker Container | Docker Volume |
|---|---|
| Runs the application | Stores persistent data |
| Can be temporary | Data can survive container deletion |
| Contains application environment | Used for data storage |

## Key Learning

Docker volumes are useful when application data needs to persist even after a container is stopped or removed.