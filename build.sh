

source /home/gitpod/publisher/nvm.sh && nvm use --lts && export PATH=/home/gitpod/publisher/versions/node/v14.17.5/bin:$PATH

set -e
cd /workspace/www_threefold_io


set +e
if [ -f vue.config.js ]; then
    npm run-script build
else
    gridsome build
fi

set -e

mkdir -p /home/gitpod/publisher/publish/
rsync -ra --delete /workspace/www_threefold_io/dist/ /home/gitpod/publisher/publish//

cd /workspace/www_threefold_io/dist

#echo go to http://localhost:9999/
 #python3 -m http.server 9999

