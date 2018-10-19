#!/bin/bash

curl "http://localhost:4741/lists/${LID}/tasks" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "task": {
      "task_name": "'"${NAME}"'"
    }
  }'

echo
