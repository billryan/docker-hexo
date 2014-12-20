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

# Define default command.
CMD ["bash"]

# Expose ports.
EXPOSE 4000
