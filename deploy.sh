#!/bin/bash
docker login -u AarthiK  -p $DOCKER_PASSWORD
if [[ $GIT_BRANCH == "origin/dev" ]]; then
       sh 'chmod +x build.sh'
       sh './build.sh'

        docker tag test AarthiK/dev
        docker push AarthiK/dev

if [[ $GIT_BRANCH == "origin/prod" ]]; then
        sh 'chmod +x build.sh'
        sh './build.sh'

        docker tag test AarthiK/prod
        docker push Aarthik/prod

else
        echo "failed"
fi
