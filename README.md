# Welcome to Welcome to ThreeFold Website RepositoryWebsite Repository

![](./static/images/tf_logo.png)

## About

The official website of ThreeFold Foundation. <br>

Production: [www.threefold.io](https://www.threefold.io) (master branch)

Staging: www2.threefold.io (development branch)

Last Updated: September 2024

## Administrators

[ThreeFold's Web Admins](https://github.com/orgs/threefoldfoundation/teams/team_web_admin)

## Contribution Procedure

![readme](https://user-images.githubusercontent.com/43240801/236867088-56c95abd-510c-4202-b0c5-317cdfb75cb3.png)

It is highly important to follow this procedure to contribute to the website content. <br>
__WARNING__: DO NOT commit straight into the __master__ / __development__ branches.

1. Feel free to [create a new issue](https://github.com/threefoldfoundation/www_threefold_io/issues/new) to report an error on the website, or if you have any suggestions on website improvements. 

2. Make your own branch from the __development__ branch. By creating a new branch from __development__ you will be provided with the latest copy of the live website content at the staging site, www2.threefold.io.

3. Add your edits into your own branch via code editor locally, and push your local changes online. WARNING: DO NOT add your edits straight into __master__ / __development__ branch.

5. Create a PR to merge your own branch into **development**, and assign one of [ThreeFold's Web Admins](https://github.com/orgs/threefoldfoundation/teams/team_web_admin) on your PR as reviewer, or assign @sasha-astiadi as reviewer.

7. When PR is approved, you can see your changes on staging env on www2.threefold.io (development branch)

8. Admin will then create a PR to merge **development** into into **master** (production branch)

10. When PR is approved, you can see your changes live on production www.threefold.io (master branch).

## Development

While contributing content to this site doesn't strictly require setting up a development environment, it will allow you to preview your changes and that's super handy.

To do that, the following prerequisites are needed:

* macOS or Linux
* [Zola](https://www.getzola.org/documentation/getting-started/installation/)

Then clone the repository recursively to also pull in contents of `threefold_data`:

```bash
#if you don't have hero installed yet, run the following commands
curl https://raw.githubusercontent.com/freeflowuniverse/crystallib/development/scripts/install_hero.sh > /tmp/hero_install.sh
bash /tmp/hero_install.sh

#install zola & tailwind
hero installers -n zola

#get this repo be careful --pr will remove all local changes (pull reset), -b development means we are on the development branch
hero git pull -u https://github.com/threefoldfoundation/www_threefold_io -b development -pr

#cd to the directory
eval $(hero git cd -u https://github.com/threefoldfoundation/www_threefold_io)

bash build.sh

```

Finally, start a browsable local copy of the site that will respond to changes in the source files like this:

```
zola serve
```

Zola will display a local address such as `http://127.0.0.1:1111` which you can click or copy and paste into your browser to view the site on your own machine.

That's it—have fun!