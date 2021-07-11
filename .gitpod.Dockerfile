

FROM gitpod/workspace-full:latest

USER root
RUN apt-get update && apt-get install -y mc rsync 

ADD gitpod/install_docker.sh /tmp/install_docker.sh
ADD package.json /tmp/package.json

RUN bash /tmp/install_docker.sh


# RUN apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*

USER gitpod

# ENTRYPOINT [ "/usr/bin/bash" ]
