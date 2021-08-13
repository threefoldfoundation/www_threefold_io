

set -e
cd /home/gitpod/codewww/github/threefoldfoundation/www_threefold_io/development

#set +e
#source /home/gitpod/.publisher/nvm.sh
#set -e
#nvm use --lts

export PATH=/home/gitpod/.publisher/versions/node/v14.17.0/bin:$PATH

if [ -f vue.config.js ]; then
    npm run-script serve
else
    gridsome develop
fi

