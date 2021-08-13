

set -e

cd /home/gitpod/codewww/github/threefoldfoundation/www_threefold_io/development

rm -f yarn.lock
rm -rf .cache        

#set +e
#source /home/gitpod/.publisher/nvm.sh
#set -e

if [ "true" = "true" ]; then
    #nvm use --lts
    npm install
    rsync -ra --delete node_modules/ /home/gitpod/.publisher/node_modules/
else
    rsync -ra --delete /home/gitpod/.publisher/node_modules/ node_modules/ 
    #nvm use --lts
    npm install
fi



