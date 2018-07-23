#!/usr/bin/env bash

psqlflush() {
  # Flush postgresql database
  if [ -z $DATABASE_NAME ]; then
    echo "Fill DATABASE_NAME variable"
  else
    sudo -iu postgres psql -c "DROP DATABASE $DATABASE_NAME;"
    sudo -iu postgres psql -c "CREATE DATABASE $DATABASE_NAME;"
    sudo -iu postgres psql -c "GRANT ALL PRIVILEGES ON DATABASE $DATABASE_NAME TO $DATABASE_USER;"
    echo "$DATABASE_NAME was flushed"
  fi
}