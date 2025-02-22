# Use a base image with the desired Linux distribution
FROM ubuntu:latest

# Install necessary packages
RUN apt-get update && apt-get install -y wget bzip2

# Download Anaconda installation script
WORKDIR /tmp
RUN wget https://repo.anaconda.com/archive/Anaconda3-2024.10-1-Linux-aarch64.sh

# Set environment variables for the installation process
ENV PATH="/root/anaconda3/bin:${PATH}"
ENV SHELL=/bin/bash

# Run the Anaconda installation script
RUN bash Anaconda3-2024.10-1-Linux-aarch64.sh -b -p /root/anaconda3

# Clean up downloaded script
RUN rm Anaconda3-2024.10-1-Linux-aarch64.sh

RUN pip install --upgrade pip

RUN conda install tensorflow -y

RUN conda install keras -y

RUN conda install langchain -y

RUN conda install jupyter -y

RUN mkdir -p /opt/notebooks

EXPOSE 8888