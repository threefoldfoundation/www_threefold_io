FROM gitpod/workspace-full:latest

ENV DEBIAN_FRONTEND=noninteractive
USER gitpod
RUN sudo apt-get update && sudo apt install -y redis
RUN sudo apt-get update && sudo apt-get install -y mc rsync git

RUN sudo wget https://github.com/crystaluniverse/publishtools/releases/download/first/publishtools_linux -O publishtools && sudo chmod +x publishtools && sudo cp /home/gitpod/publishtools /usr/local/bin/

RUN cd /tmp && wget https://raw.githubusercontent.com/threefoldfoundation/www_threefold_io/development/sites.json && sudo publishtools install || echo "try 1"
USER root
RUN cd /tmp &&  sudo publishtools install --reset

ENTRYPOINT [ "entrypoint.sh" ]
