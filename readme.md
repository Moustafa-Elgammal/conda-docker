# Conda Docker 
Is a docker project to build docker image with:

- [x] Anaconda 3, [Anaconda3-2024.10-1-Linux-aarch64.sh](https://www.anaconda.com/download/success).
- [x] TensorFlow
- [x] keras
- [x] langchain.
- [x] jupyter notebook

## How to run.

- [Install Docker](https://docs.docker.com/get-started/get-docker/).
- Run in project root path `docker compose up --build` or `docker compose up -d --build` to detach the process in the background.
- Find local server has been started, url in logs <img src="img.png">
- You can any python notebook in folder/directory [notbooks](./notebooks), so this will be shown in the browser notebooks.