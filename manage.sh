#!/bin/bash


usage() {
  echo "Usage: $0 {up|down}"
  exit 1
}


if [ $# -ne 1 ]; then
  usage
fi


case "$1" in
  up)
    echo "Starting Docker Compose services..."
    docker compose up -d
    ;;
  down)
    echo "Stopping Docker Compose services..."
    docker compose down
    ;;
  *)
    usage
    ;;
esac

