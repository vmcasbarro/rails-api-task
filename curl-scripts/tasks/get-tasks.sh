#!/bin/bash

curl "http://localhost:4741/lists/${LID}/tasks" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
