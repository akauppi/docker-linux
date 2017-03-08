#
# Dockerfile
#
FROM ubuntu:17.04

RUN apt-get update && \
  apt-get install -y \
    curl \
    sudo

# Note: We're adding some meaningful packages - that's part of the game. Your favourite set will vary.
#
RUN apt-get install -y \
    openjdk-8-jdk

# Add a 'user' account with sudo access
#
RUN useradd -ms /bin/bash user && \
  echo 'user:user' | chpasswd && \
  usermod -a -G sudo user

USER user

WORKDIR /home/user

ENTRYPOINT /bin/bash
