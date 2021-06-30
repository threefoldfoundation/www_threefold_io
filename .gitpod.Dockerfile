FROM gitpod/workspace-full:latest

ENV DEBIAN_FRONTEND=noninteractive
USER gitpod
RUN sudo apt-get update && sudo apt install -y redis
RUN sudo apt-get update && sudo apt-get install -y mc rsync git

RUN pwd && ls -alh
RUN git clone https://github.com/crystaluniverse/publishtools.git \
    && cp /home/gitpod/publishtools/install.sh /tmp/install.sh \
    && cp /home/gitpod/publishtools/build.sh /tmp/build.sh \
    && cp -r /home/gitpod//publishtools/publishtools/ /tmp/publishtools/
RUN bash /tmp/install.sh
RUN cd /tmp && bash /tmp/build.sh
RUN sudo apt-get clean && sudo rm -rf /var/cache/apt/* && sudo rm -rf /var/lib/apt/lists/* && sudo rm -rf /tmp/*

RUN whoami
RUN pwd && ls -lah

RUN cd /tmp && wget https://raw.githubusercontent.com/threefoldfoundation/www_threefold_io/development/sites.json && sudo publishtools install || echo "try 1"
USER root
RUN cd /tmp &&  sudo publishtools install --reset

ENTRYPOINT [ "entrypoint.sh" ]
