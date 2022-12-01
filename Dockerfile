# Set the base image to Ubuntu
FROM ubuntu:20.04
# Update the repository sources list and install 
RUN apt update && apt install -y python3
RUN apt install -y pip
RUN pip install mysql-connector-python
RUN apt-get install -y mysql-client
RUN apt install -y vim
RUN mkdir -p /data/dockerfile
ADD .//connector.py "/data/dockerfile"
ENTRYPOINT "/data/dockerfile"