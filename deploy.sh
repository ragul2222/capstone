#!/bin/bash
docker login -u aarthik  -p $DOCKER_PASSWORD
if [[ $GIT_BRANCH == "origin/dev" ]]; then
       sh 'chmod +x build.sh'
       sh './build.sh'

        docker tag test aarthik/dev
        docker push aarthik/dev

if [[ $GIT_BRANCH == "origin/prod" ]]; then
        sh 'chmod +x build.sh'
        sh './build.sh'

        docker tag test aarthik/prod
        docker push aarthik/prod

else
        echo "failed"
fi
