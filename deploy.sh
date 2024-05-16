#!/bin/bash
docker login -u ar8888  -p $DOCKER_PASSWORD
if [[ $GIT_BRANCH == "origin/dev" ]]; then
       sh 'chmod +x build.sh'
       sh './build.sh'
        docker tag test ar8888/dev
        docker push ar8888/dev
if [[ $GIT_BRANCH == "origin/prod" ]]; then
        sh 'chmod +x build.sh'
        sh './build.sh'
        docker tag test ar8888/prod
        docker push ar8888/prod
else
        echo "failed"
fi
