# Written by Luke Brady
# Digital Ascension 2018

# List out the Docker networks installed by default.
docker network list

# Create a new bridge network called test-network.
docker network create test-network

# Deploy some containers and add to test-network.
docker run -it -d --name centos1 centos:latest
docker run -it -d --name centos2 centos:latest

# Attach containers to the created network.
docker network connect test-network centos1
docker network connect test-network centos2

# Inspect the test-network to see that the containers are attached.
docker network inspect test-network

# Attach to a container and ping another containers from within the isolated network.
docker attach centos1
ping <ip_of_other_container>

# Disconnect containers from the test-network.
docker network disconnect test-network centos1
docker network disconnect test-network centos2

# Inspect the network one more time to see that the containers have been removed from the test-network.
docker network inspect test-network

# Remove the network after the containers have been removed.
docker network rm test-network

# List out networks.
docker network list
