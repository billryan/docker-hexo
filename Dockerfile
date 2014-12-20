#
# Hexo Dockerfile
#
# https://github.com/billryan/docker-hexo
#

# Pull base image.
FROM dockerfile/nodejs
MAINTAINER Yuan Bin <me@yuanbin.me>

# Install Hexo
RUN npm install -g hexo

# Mount a Host Directory as a Data Volume for hexo
VOLUME /blog

# Expose ports.
EXPOSE 4000

WORKDIR /blog

