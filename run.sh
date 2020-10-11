docker build -t Jenkins .
docker network create devops
docker run --rm -u root --name jenkins \
  --detach \
  --volume jenkins-data:/var/jenkins_home \
  --volume "$HOME":/home \
  --volume /var/run/docker.sock:/var/run/docker.sock \
  --network devops \
  --publish 8080:8080 \
  Jenkins 
