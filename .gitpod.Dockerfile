

FROM gitpod/workspace-full:latest

USER root
RUN apt-get update && apt-get install -y mc rsync 

ADD gitpod/install.sh /tmp/install.sh
ADD gitpod/package.json /tmp/package.json

RUN bash /tmp/install.sh


# RUN apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*

USER gitpod

# ENTRYPOINT [ "/usr/bin/bash" ]
