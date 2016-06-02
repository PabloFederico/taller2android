##########################################
## Dockerfile 				##
##########################################

FROM ubuntu:14.04
RUN  apt-get update \
  && apt-get install -y wget \
  && rm -rf /var/lib/apt/lists/* \
  && apt-get install make \
  && apt-get install zip unzip
MAINTAINER gisedaye gisedaye
COPY ./ /home
RUN cd /home/AppServer && chmod 777 install.sh && ./install.sh -docker
WORKDIR /home/AppServer/build
CMD ["bash"]

