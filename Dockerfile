#
# Dockerfile
#
FROM ubuntu:17.04

RUN apt-get update && \
  apt-get install -y curl sudo

# Add a 'user' account with sudo access
#
RUN useradd -ms /bin/bash user && \
  echo 'user:user' | chpasswd && \
  usermod -a -G sudo user

USER user

WORKDIR /home/user

ENTRYPOINT /bin/bash
