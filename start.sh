# install hero if not installed
if [ ! -f "hero" ]
then
    curl https://raw.githubusercontent.com/freeflowuniverse/crystallib/development/scripts/installer_hero.sh > /tmp/hero_install.sh
    bash /tmp/hero_install.sh
fi

# run playbook
hero zola -u https://github.com/threefoldfoundation/www_threefold_io/tree/development_zola/playbook
