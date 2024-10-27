# Use the existing tg-bot-api image
FROM spechide/tg-bot-api:latest

# Set the working directory
WORKDIR /app

# Create a directory for storing log files
RUN mkdir -p /app/telegram-bot-api

# Define environment variables for API ID and Hash (replace with actual values or use during runtime)
ENV TELEGRAM_API_ID=YOUR_API_ID
ENV TELEGRAM_API_HASH=YOUR_API_HASH

# Expose necessary ports (default HTTP port for API server)
EXPOSE 8081

# Command to run the bot API server with specified arguments
CMD ["telegram-bot-api", "--local", "--http-port=8081", "--api-id=${TELEGRAM_API_ID}", "--api-hash=${TELEGRAM_API_HASH}"]
