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

# add non-root user
#RUN groupadd hexo && useradd -m -g hexo hexo
# replace git add uid with your currently $GID and $UID
RUN useradd -m -g 100 -u 1000 hexo

ENV HOME /home/hexo

# Mount a Host Directory as a Data Volume for hexo
VOLUME /blog

# Expose ports.
EXPOSE 4000

WORKDIR /blog

#COPY user_mapping.sh /usr/bin/user_mapping.sh
#RUN chmod 755 /usr/bin/user_mapping.sh

#CMD ["user_mapping.sh"]
#ENTRYPOINT ["hexo"]

USER hexo
