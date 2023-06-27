FROM ubuntu:20.04
ENV TZ=Europe/Moscow
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt update
RUN apt install git -y \
    && apt install default-jdk -y \
    && apt install maven -y \
    && apt install docker.io -y
WORKDIR /home/app
ADD DF /home/app/