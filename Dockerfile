# Base image (Ubuntu with Ollama pre-installed)
FROM ubuntu:22.04

# Install dependencies
RUN apt-get update && apt-get install -y curl

# Install Ollama
RUN curl -fsSL https://ollama.com/install.sh | sh

# Copy start script
COPY start.sh /start.sh
RUN chmod +x /start.sh

# Run Ollama + Model
CMD ["/start.sh"]
