#!/bin/sh
telegram-bot-api --local --http-port=8081 --api-id="$TELEGRAM_API_ID" --api-hash="$TELEGRAM_API_HASH"
