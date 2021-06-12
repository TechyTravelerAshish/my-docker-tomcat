# Read Me : my-docker-tomcat

## Working Version-1 (in Local Desktop)

docker build --no-cache -t mywebapp ./

docker run -p 8080:8080 mywebapp

docker tag mywebapp dockerplaygroup/mywebapp

docker push dockerplaygroup/mywebapp

Copy war files using winscp, downloading directlt caused zip error while starting container


## Alpine tomcat is the stable option use that only for now. (Final Image)

docker image build --no-cache -t ecs-tomcat-webapp ./

docker run -p 8080:8080 ecs-tomcat-webapp

Tomcat URL  :- http://localhost:8080/

Web App URL :- http://localhost:8080/ecs-tomcat-webapp/

docker tag ecs-tomcat-webapp dockerplaygroup/ecs-tomcat-webapp

docker push dockerplaygroup/ecs-tomcat-webapp

## Docker installation in EC2

sudo yum update -y;
sudo amazon-linux-extras install docker;
sudo service docker start;
sudo usermod -a -G docker ec2-user;
docker info;
touch Dockerfile;

## Usefull Commands

docker image ls

docker container ls

## Tagging before pushing to Docker Hub Repository

You need to include the namespace for Docker Hub to associate it with your account. The namespace is the same as your Docker Hub account name. You have to tag your image before pushing:

docker tag firstimage YOUR_DOCKERHUB_NAME/firstimage

Now you should be able to push it.

docker push YOUR_DOCKERHUB_NAME/firstimage

## Reference Link
https://stackoverflow.com/questions/41984399/denied-requested-access-to-the-resource-is-denied-docker

https://www.cprime.com/resources/blog/deploying-your-first-web-app-to-tomcat-on-docker/

## AWS Getting Started
https://aws.amazon.com/getting-started/hands-on/deploy-docker-containers/

## AWS Docker Installation Steps
https://docs.aws.amazon.com/AmazonECS/latest/developerguide/docker-basics.html

## ECS Container Metadata
https://docs.aws.amazon.com/AmazonECS/latest/developerguide/container-metadata.html