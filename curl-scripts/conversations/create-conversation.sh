#!/bin/bash

curl "http://localhost:4741/conversations" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "conversation": {
      "conversation_name": "'"${NAME}"'"
    }
  }'

echo
