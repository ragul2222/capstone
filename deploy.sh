#!/bin/bash
    echo hi123
    sh 'chmod +x build.sh'
    sh './build.sh'
    docker login -u rrragul -p @Ragul@1403
    docker tag test rrragul/task_4
    docker push rrragul/task_4
    # Stop and remove any existing container running on port 90
    docker stop task_4_container || true
    docker rm task_4_container || true

    # Run the container on port 90
    docker run -d -p 90:80 --name task_4_container rrragul/task_4
    
