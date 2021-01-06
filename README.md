Simple attempt to implement https://github.com/lucidrains/lightweight-gan in a docker image. Inspired by https://www.docker.com/blog/containerized-python-development-part-1/ and https://github.com/jeffheaton/docker-stylegan2-ada/blob/main/Dockerfile.

Requirements:
- Docker
- Data somewhere on your computer in a folder to use somewhere for training.

Usage:
Clone the repo
docker build . -t lightgan
sudo nvidia-docker run -it -v $path_to_images:/mnt --ipc=host lightgan:latest /bin/bash
lightweight_gan --data /mnt --aug-prob 0.25 --aug-types [translation,cutout,color] --num-train-steps 500 [in container]
exit
sudo docker ps -a
sudo docker cp $container_name:/results .
