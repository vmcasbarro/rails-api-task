#!/bin/bash

curl --include --request PATCH "http://localhost:4741/tasks/3" \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "task": {
      "task_name": "'"${NAME}"'",
      "list_id": 4
    }
  }'
