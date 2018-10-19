#!/bin/bash

curl --include --request DELETE "http://localhost:4741/lists/${LID}/tasks/${ID}" \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
