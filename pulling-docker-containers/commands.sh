# Pull the NGINX image from the Docker repo.
docker pull nginx:latest
# Deploy a new NGINX container and expose it on port 80.
docker run -d --name nginx-test -p 80:80 nginx:latest
# List out all of the running containers.
docker ps -a
