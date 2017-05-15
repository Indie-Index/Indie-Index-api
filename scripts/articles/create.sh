API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/articles"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "article": {
      "title": "'"${TITLE}"'",
      "body": "'"${BODY}"'",
    }
  }'
