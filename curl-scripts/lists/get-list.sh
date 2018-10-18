#!/bin/bash

curl --include --request GET "http://localhost:4741/lists/3" \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
