#!/bin/bash
docker_image = $(docker inspect registry.heroku.com/test-iot-platform/web --format={{.Id}})
curl -n -X PATCH https://api.heroku.com/apps/$HEROKU_APPLICATION/formation \
  -d '{
  "updates": [
    {
      "type": "web",
      "docker_image": "'"$docker_image"'"
    },
  ]
}' \
  -H "Content-Type: application/json" \
  -H "Accept: application/vnd.heroku+json; version=3.docker-releases"