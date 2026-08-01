#!/bin/bash
echo "Cleaning up the project environment..."
docker compose down -v --rmi all
echo "Cleanup complete! The environment is now completely clean."

