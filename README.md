# Based on articulate/message-db

docker build --build-arg MESSAGE_DB_VERSION=1.3.0 --build-arg POSTGRES_VERSION=16.1 -t postgres-message-db .

Must set MESSAGE_STORE_PASSWORD env variable before running.