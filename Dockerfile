FROM ubuntu:20.04
RUN apt update
RUN apt install git -y \
    && apt install default-jdk -y \
    && apt install maven -y \
    && apt install docker.io -y
WORKDIR /home/app
ADD /home/aaksenof/DF/Dockerfile /home/app/Dockerfile