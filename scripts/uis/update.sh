#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/uis/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "ui": {
      "catagory": "'"${CATAGORY}"'",
      "convention": "'"${CONVENTION}"'",
      "overview": "'"${OVERVIEW}"'",
      "carousel": "'"${CAROUSEL}"'",
      "body": "'"${BODY}"'"
    }
  }'

echo
