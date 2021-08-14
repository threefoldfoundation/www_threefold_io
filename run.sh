

set -e
cd /workspace/code//github/threefoldfoundation/www_threefold_io

#set +e
#source /workspace/codewiki/nvm.sh
#set -e
#nvm use --lts

#export PATH=/bin:$PATH

if [ -f vue.config.js ]; then
    npm run-script serve
else
    gridsome develop
fi

