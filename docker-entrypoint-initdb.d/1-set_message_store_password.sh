#!/bin/bash
# 2-set_message_store_password.sh

# Wait for PostgreSQL to become available
until psql -U "$POSTGRES_USER" -c '\q'; do
  >&2 echo "Postgres is unavailable - sleeping"
  sleep 1
done

# Execute the command to set the password
psql -U "$POSTGRES_USER" -d "$POSTGRES_DB" -c "ALTER USER message_store WITH PASSWORD '$MESSAGE_STORE_PASSWORD';"
