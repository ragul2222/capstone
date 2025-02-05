#!/bin/bash
    echo hi123
    sh 'chmod +x build.sh'
    sh './build.sh'
    docker login -u rrragul -p @Ragul@1403
    docker tag test rrragul/sample
    docker push rrragul/sample
    
