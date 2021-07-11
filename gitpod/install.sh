set -e



export base=/nodejs

sudo chown gitpod:gitpod -R $base

export PATH=$base/bin:$PATH

source $base/nvm.sh

cd $base

rm -f yarn.lock
rm -rf .cache		

nvm install --lts
nvm use --lts

npm install --global @gridsome/cli

cd /workspace
git clone https://github.com/threefoldfoundation/data_threefold

