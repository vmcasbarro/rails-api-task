#!/bin/bash

curl "http://localhost:4741/messages" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "message": {
      "body": "'"${BODY}"'",
      "conversation_id": "'"${CONVO}"'"
    }
  }'

echo
