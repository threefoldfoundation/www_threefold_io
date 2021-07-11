set -ex

rm -f yarn.lock
rm -rf .cache		


export base=/nodejs

source $base/nvm.sh
nvm use --lts

rsync -ra --delete $base/node_modules/ node_modules/ 

npm install

export PATH=$base/bin:\$PATH

if [ -f vue.config.js ]; then
npm run-script serve
else
gridsome develop
fi