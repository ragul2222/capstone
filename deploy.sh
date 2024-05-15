version: '3'

services:
  my-service:
    image: my-dockimage:latest  
    ports:
      - "8080:80" 
   
    volumes:
      - d/onedrive/devops/capstone-project/docker/Dockerfile:/var/opt/nginx