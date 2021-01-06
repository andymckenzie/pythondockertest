FROM tensorflow/tensorflow:1.14.0-gpu-py3

ENV DNNLIB_CACHE_DIR=/home/.cache

RUN apt-get update && \
  apt-get -y install git && \
  apt-get clean

COPY requirements.txt .

RUN pip install --upgrade pip && \
  pip install -r requirements.txt
