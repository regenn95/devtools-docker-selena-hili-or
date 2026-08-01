#!/bin/bash
echo "Starting project setup..."

# Explicitly create the network as required
docker network create devtools-network 2>/dev/null || true

docker compose up -d
echo "Setup is complete! The Drupal site is now running."
