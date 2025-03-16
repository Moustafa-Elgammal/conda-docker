#!/bin/bash
# Start Ollama server in the background
ollama serve &

# Wait briefly to ensure the server is ready
sleep 5

# Pull the model if not already present
ollama pull $NEEDED_MODEL

# Keep the container running by waiting for the server process
wait