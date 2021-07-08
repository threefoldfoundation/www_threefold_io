FROM threefolddev/publishtools:latest

ENV DEBIAN_FRONTEND=noninteractive
USER gitpod

RUN cd /tmp && wget https://raw.githubusercontent.com/threefoldfoundation/www_threefold_io/development/sites.json && sudo publishtools update && sudo publishtools install || echo "try 1"
USER root
RUN cd /tmp &&  sudo publishtools install --reset

ENTRYPOINT [ "entrypoint.sh" ]
