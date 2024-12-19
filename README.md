# Install docker inside jenkins container
```shell
docker exec -it --user root jenkins /bin/bash -c "apt-get update -y && apt-get install -y curl && curl -fsSL https://get.docker.com | sh"

docker exec -it --user root jenkins /bin/bash -c "usermod -aG docker jenkins"

docker exec -it --user root jenkins /bin/bash -c "chmod -R 666 /var/run/docker.sock"
```