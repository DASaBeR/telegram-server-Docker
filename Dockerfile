# Use the existing tg-bot-api image
FROM spechide/tg-bot-api:latest

# Set the working directory
WORKDIR /app

# Create a directory for storing log files (if needed)
RUN mkdir -p /app/telegram-bot-api

# Define environment variables for API ID and Hash (set at runtime)
ENV TELEGRAM_API_ID=YOUR_API_ID
ENV TELEGRAM_API_HASH=YOUR_API_HASH

# Expose necessary ports (default HTTP port for API server)
EXPOSE 8081

# Copy the entrypoint script into the container
COPY entrypoint.sh /app/entrypoint.sh
RUN chmod +x /app/entrypoint.sh

# Use the script as the entry point
ENTRYPOINT ["/app/entrypoint.sh"]
