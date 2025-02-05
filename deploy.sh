#!/bin/bash
    sudo fuser -k 80/tcp
    echo hi123
    sh 'chmod +x build.sh'
    sh './build.sh'
    docker login -u rrragul -p @Ragul@1403
    docker tag test rrragul/task_4
    docker push rrragul/task_4

    
