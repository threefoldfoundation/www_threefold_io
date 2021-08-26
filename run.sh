

source /home/gitpod/publisher/nvm.sh && nvm use --lts && export PATH=/home/gitpod/publisher/versions/node/v14.17.5/bin:$PATH

set -e
cd /workspace/www_threefold_io

if [ -f vue.config.js ]; then
    npm run-script serve
else
    gridsome develop
fi

