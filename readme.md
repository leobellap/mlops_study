This repository uses github flow methodology: for each task - a new .ipynb file is created in a new branch.
To start Docker container use:
1. docker build . -t docker_container
2. docker run -it -p 8888:8888 -v /home/bellap/mlops_study:/app docker_container
