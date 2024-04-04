# Threefold Website
Official website for Threefold.

**Administration & Access**

This website is administered by [ThreeFold's Web Admins](https://github.com/orgs/threefoldfoundation/teams/team_web_admin). Publishing changes directly to `development` and `master` branches requires access for repository admins. Please see [contribution procedures](CONTRIBUTING.md) for more information.

**Deployment**
- Production: [www.threefold.io](https://www.threefold.io) (`master` branch)
- Staging: [www2.threefold.io](https://www2.threefold.io) (`development` branch)

## Getting started

1. Install `hero` if you don't have it
```bash
curl https://raw.githubusercontent.com/freeflowuniverse/crystallib/development/scripts/installer_hero.sh > /tmp/hero_install.sh
bash /tmp/hero_install.sh
```

1. Clone repository

2. edit content or playbook

3. run playbook to preview website in browser

`hero zola -u https://github.com/threefoldfoundation/www_threefold_io/tree/development_zola/playbook` or `bash start.sh`

4. save and publish changes

## Development

This website is built with `hero`, using `zola` under the hood. 

Please see 


Finally, start a browsable local copy of the site that will respond to changes in the source files like this:


Zola will display a local address such as `http://127.0.0.1:1111` which you can click or copy and paste into your browser to view the site on your own machine.

That's it—have fun!
