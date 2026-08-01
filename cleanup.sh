#!/bin/bash
echo "Cleaning up the project environment..."

# Take down containers, volumes, and images
docker compose down -v --rmi all

# Explicitly remove the network we created in setup.sh
docker network rm devtools-network 2>/dev/null || true

echo "Cleanup complete! The environment is now completely clean."
