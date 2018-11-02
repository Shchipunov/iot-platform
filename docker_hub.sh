#!/bin/bash
docker login -u $DOCKER_USER -p $DOCKER_PASSWORD
if [ "$TRAVIS_BRANCH" = "master" ]; then
    TAG="latest"
else
    TAG="$TRAVIS_BRANCH"
fi
echo "$TRAVIS_REPO_SLUG"
echo "$TRAVIS_REPO_SLUG:$TAG"
docker build -t $TRAVIS_REPO_SLUG:$TAG .
docker push $TRAVIS_REPO_SLUG