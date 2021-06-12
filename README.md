# my-docker-tomcat

1. Working Version-1 (in Local Desktop)

docker build --no-cache -t mywebapp ./ 
docker run -p 8080:8080 mywebapp
docker tag mywebapp dockerplaygroup/mywebapp
docker push dockerplaygroup/mywebapp





# Usefull Commands

docker image ls
docker container ls

# Tagging before pushing to Docker Hub Repository

You need to include the namespace for Docker Hub to associate it with your account. The namespace is the same as your Docker Hub account name.
You have to tag your image before pushing:

docker tag firstimage YOUR_DOCKERHUB_NAME/firstimage

Now you should be able to push it.

docker push YOUR_DOCKERHUB_NAME/firstimage

# Reference Link
https://stackoverflow.com/questions/41984399/denied-requested-access-to-the-resource-is-denied-docker