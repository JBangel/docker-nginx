FROM ubuntu:precise
MAINTAINER Joshua Bangel <falornan@gmail.com>

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe multiverse" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install -y python-software-properties
RUN add-apt-repository -y ppa:nginx/stable
RUN apt-get update
RUN apt-get install -y nginx

RUN echo "daemon off;" >> /etc/nginx/nginx.conf

# Ensure the port gets exposed even without run flags
EXPOSE 80

ENTRYPOINT ["nginx"]
