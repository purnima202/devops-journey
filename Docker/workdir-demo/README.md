# Docker WORKDIR Demo

## What I Learned

In this lab, I learned how to use the `WORKDIR` instruction in a Dockerfile.

## What is WORKDIR?

`WORKDIR` sets the working directory inside a Docker container.

For example:

```dockerfile
WORKDIR /app
```

After this instruction, Docker uses `/app` as the current working directory for the following instructions.

## Why Use WORKDIR?

Without `WORKDIR`, we may need to use commands like `cd` to move to a directory.

Using `WORKDIR` makes the Dockerfile:

- Easier to read
- Easier to maintain
- More organized

## Example

```dockerfile
FROM ubuntu:latest

WORKDIR /app
```

Now `/app` becomes the working directory inside the container.

## Docker Flow

```text
Dockerfile
    ↓
WORKDIR /app
    ↓
Commands execute from /app
```

## Key Learning

`WORKDIR` defines the working directory for instructions such as `RUN`, `CMD`, `ENTRYPOINT`, `COPY`, and `ADD`.

It is a good practice to use `WORKDIR` instead of repeatedly using `cd` commands.