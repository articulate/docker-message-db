# articulate/message-db
![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/articulate/message-db) ![Docker Pulls](https://img.shields.io/docker/pulls/articulate/message-db)

Docker image for [Message DB](https://github.com/message-db/message-db), built on `postgres:latest`.

## Usage

Here's a barebones `docker-compose.yml` for an app that uses Message DB:

```yml
version: '3.7'
services:
  app:
    build: .
    depends_on:
      - message_db
    environment:
      - MESSAGE_STORE_URI=postgresql://message_store@message_db:5432/message_store

  message_db:
    image: articulate/message-db:1.2.2
    environment:
      POSTGRES_HOST_AUTH_METHOD: trust
    expose:
      - '5432'
```
