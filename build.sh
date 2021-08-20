

set -e
cd /workspace/code//github/threefoldfoundation/www_threefold_io

#set +e
#source /workspace/codewiki/nvm.sh
#set -e
#nvm use --lts

#export PATH=/bin:$PATH

set +e
if [ -f vue.config.js ]; then
    npm run-script build
else
    gridsome build
fi

set -e

mkdir -p /workspace/codewiki/publish/www_threefold_io
rsync -ra --delete /workspace/code//github/threefoldfoundation/www_threefold_io/dist/ /workspace/codewiki/publish/www_threefold_io/

cd /workspace/code//github/threefoldfoundation/www_threefold_io/dist

#echo go to http://localhost:9999/
 #python3 -m http.server 9999

