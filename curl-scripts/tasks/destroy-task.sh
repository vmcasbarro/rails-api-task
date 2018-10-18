#!/bin/bash

curl --include --request DELETE "http://localhost:4741/tasks/2" \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
