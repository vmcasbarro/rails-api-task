#!/bin/bash

curl --include --request DELETE "http://localhost:4741/tasks/1" \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
