#!/bin/bash
set -e 

#pull the docker image 
docker push virus2466/flask-demo-aws

# run the image 
docker run -d -p 5000:5000 virus2466/flask-demo-aws
