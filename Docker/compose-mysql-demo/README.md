# Docker Compose with .NET and MySQL

## What I Learned

In this lab, I learned how to run a .NET application and MySQL database together using Docker Compose.

## Architecture

```text
        Docker Compose
              |
       -----------------
       |               |
       ↓               ↓
   .NET App          MySQL
   Container         Container
       |               |
       -----------------
          Network
```

The .NET application connects to the MySQL database using the Docker Compose service name.

## Project Structure

```text
compose-mysql-demo/
│
├── compose.yaml
│
└── app/
    ├── Dockerfile
    ├── Program.cs
    └── app.csproj
```

## Technologies Used

- Docker
- Docker Compose
- .NET 8
- C#
- MySQL

## Docker Compose Configuration

The `compose.yaml` file defines two services:

### App

The .NET application runs inside its own container.

### Database

MySQL runs inside a separate container.

The application communicates with MySQL using the service name defined in Docker Compose.

For example:

```text
db:3306
```

Here `db` is the MySQL service name.

## Commands Used

### Build and Start Containers

```bash
docker compose up -d --build
```

### Check Services

```bash
docker compose ps
```

### View Logs

```bash
docker compose logs
```

### View Application Logs

```bash
docker compose logs app
```

### Open a Shell Inside the App Container

```bash
docker compose exec app sh
```

### Stop Containers

```bash
docker compose down
```

## Networking

Docker Compose automatically creates a network for the services.

Containers can communicate with each other using their service names.

Example:

```text
.NET App
   |
   | MySQL connection
   ↓
db:3306
   |
   ↓
MySQL Container
```

## Important Learning

Inside Docker Compose, we should use the **service name** to connect to another container.

For example:

```text
db
```

instead of using:

```text
localhost
```

`localhost` inside the app container refers to the app container itself, not the MySQL container.

## Key Learning

This lab helped me understand how multiple containers can work together as one application using Docker Compose.

I practiced:

- Creating a .NET Docker image
- Running .NET in a container
- Running MySQL in a container
- Connecting application and database containers
- Docker Compose networking
- Using service names for container-to-container communication