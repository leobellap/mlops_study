## Task: create a Docker container
### To start Docker container, use:
1. docker build . -t docker_container
2. docker run -it -p 8888:8888 -v /project/dir/location:/app docker_container
### You can find required packages in requirements.txt
