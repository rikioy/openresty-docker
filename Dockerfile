FROM openresty/openresty:1.15.8.3-1-centos

ENV TZ=Asia/Shanghai

RUN yum update; \
    yum install -y  yum-utils git wget curl luarocks g++ cmake tzdata vim crontabs logrotate iputils-ping gcc make initscripts; \
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN echo "alias ll='ls -l'" >> /root/.bashrc
