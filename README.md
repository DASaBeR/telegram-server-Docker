# Project Title

## How to Run the Project

Follow these steps to set up and run the project using Docker:

### Prerequisites

1. **Install Docker**: Ensure you have Docker installed on your machine. You can download it from [Docker's official website](https://www.docker.com/get-started).

### Setup Instructions

1. **Clone the Project Repository**:
   
   - git clone https://github.com/DASaBeR/telegram-server-Docker.git

2. **Navigate to the Project Folder**:
   - cd telegram-server-Docker

3. **Prepare the Entry Point Script**:
     - chmod +x entrypoint.sh
     - Install dos2unix (if not already installed) :  sudo apt install dos2unix
     - dos2unix entrypoint.sh

4. **Build the Docker Image**:
   - docker build -t local-telegram-bot-api .

5. **Run the Docker Container**:
   - docker run -d --name telegrambotapi -p 8081:8081 \
      -e TELEGRAMAPIID=yourapiid \
      -e TELEGRAMAPIHASH=yourapihash \
      local-telegram-bot-api


### Notes

- Replace your_api_id and your_api_hash with your actual Telegram API credentials.
- Ensure that port 8081 is not in use by another application on your system.

## Additional Information

For more details on how to use this project, please refer to the documentation or contact the project maintainers. [My LinkedIn](https://www.linkedin.com/in/mohsen-saberi/)


