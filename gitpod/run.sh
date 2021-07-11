set -e


export base=/nodejs



export PATH=$base/bin:$PATH

source $base/nvm.sh

nvm install --lts
nvm use --lts

#go to the website
cd ..

rm -f yarn.lock
rm -rf .cache

#copy from the docker image to speedup
rsync -rav --delete $base/node_modules/ node_modules/ 

#make sure all modules are there
npm install

if [ -f vue.config.js ]; then
npm run-script serve
else
gridsome develop
fi