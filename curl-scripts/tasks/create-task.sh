#!/bin/bash

curl "http://localhost:4741/tasks" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "task": {
      "task_name": "'"${NAME}"'",
      "list_id": 5
    }
  }'

echo
