

source /home/gitpod/publisher/nvm.sh && nvm use --lts && export PATH=/home/gitpod/publisher/versions/node/v14.17.5/bin:$PATH

set -e

cd /workspace/www_threefold_io

rm -f yarn.lock
rm -rf .cache        

if [ "true" = "true" ]; then
    npm install
    rsync -ra --delete node_modules/ /home/gitpod/publisher/node_modules/
else
    rsync -ra --delete /home/gitpod/publisher/node_modules/ node_modules/ 
    npm install
fi

