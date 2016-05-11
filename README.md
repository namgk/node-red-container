# node-red-container

Docker container build file to run Node-RED as a container.

Clone the Node-RED repository first:

$ git clone https://github.com/node-red/node-red.git

Build the container image:

$ sudo docker build -t node-red .

Run the container:

$ sudo docker run --rm -v ~/.node-red/:/root/.node-red -p 1880:1880 -h mynoderedhost node-red

ALTERNATIVELY, just run the container from Docker Hub

$ sudo docker run --rm -v ~/.node-red/:/root/.node-red -p 1880:1880 -h mynoderedhost nhong/node-red

<https://hub.docker.com/r/nhong/node-red/>
