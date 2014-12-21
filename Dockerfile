#
# Hexo Dockerfile
#
# https://github.com/billryan/docker-hexo
#

# Pull base image.
FROM ubuntu:14.04
MAINTAINER Yuan Bin <me@yuanbin.me>

# Install git and nodejs
RUN apt-get update && \
    apt-get install -y git-core nodejs npm

RUN ln -s /usr/bin/nodejs /usr/bin/node

# Install pandoc[Optional]
RUN apt-get install -y pandoc

# Install Hexo
RUN npm install -g hexo

# add non-root user
#RUN groupadd hexo && useradd -m -g hexo hexo
# replace gid and uid with your currently $GID and $UID
RUN useradd -m -g 100 -u 1000 hexo

ENV HOME /home/hexo

# Mount a Host Directory as a Data Volume for hexo
VOLUME /blog

# Expose ports.
EXPOSE 4000

WORKDIR /blog

#ENTRYPOINT ["hexo"]

USER hexo
