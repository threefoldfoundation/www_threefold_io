

set -e
cd /home/gitpod/codewww/github/threefoldfoundation/www_threefold_io/development

#set +e
#source /home/gitpod/.publisher/nvm.sh
#set -e
#nvm use --lts

export PATH=/home/gitpod/.publisher/versions/node/v14.17.0/bin:$PATH

set +e
if [ -f vue.config.js ]; then
    npm run-script build
else
    gridsome build
fi

set -e

mkdir -p /home/gitpod/.publisher/publish/www_threefold_io
rsync -ra --delete /home/gitpod/codewww/github/threefoldfoundation/www_threefold_io/development/dist/ /home/gitpod/.publisher/publish/www_threefold_io/

cd /home/gitpod/codewww/github/threefoldfoundation/www_threefold_io/development/dist

#echo go to http://localhost:9999/
 #python3 -m http.server 9999

