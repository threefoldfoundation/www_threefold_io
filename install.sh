

set -e

cd /workspace/code//github/threefoldfoundation/www_threefold_io

rm -f yarn.lock
rm -rf .cache        

#set +e
#source /workspace/codewiki/nvm.sh
#set -e

if [ "true" = "true" ]; then
    #nvm use --lts
    npm install
    rsync -ra --delete node_modules/ /workspace/codewiki/node_modules/
else
    rsync -ra --delete /workspace/codewiki/node_modules/ node_modules/ 
    #nvm use --lts
    npm install
fi



