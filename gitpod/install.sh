set -e


export base=/nodejs

export PATH=$base/bin:$PATH

source $base/nvm.sh

cd $base

rm -f yarn.lock
rm -rf .cache		

nvm install --lts
nvm use --lts

cd /workspace
git clone https://github.com/threefoldfoundation/data_threefold

