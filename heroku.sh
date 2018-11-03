#!/bin/bash
docker login -u _ --password=$HEROKU_API_KEY registry.heroku.com
docker tag shchipunov/iot-platform registry.heroku.com/test-iot-platform
docker push registry.heroku.com/test-iot-platform