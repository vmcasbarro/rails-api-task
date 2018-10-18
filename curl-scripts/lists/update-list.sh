#!/bin/bash

curl --include --request PATCH "http://localhost:4741/lists/1" \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "list": {
      "list_name": "'"${NAME}"'"
    }
  }'
