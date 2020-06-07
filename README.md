# My dotfiles

## Installation

**Warning:** If you want to give these dotfiles a try, you should first fork this repository, review the code, and remove things you don't want or need. Don't blindly use my settings unless you know what that entails. Use it at your own risk!

### Using Git

You can clone the repository wherever you want. The bootstrapper script will pull in the latest version and copy the files to your home folder.

```bash
git clone https://github.com/vascoalramos/dotfiles.git && cd dotfiles && sh setup.sh
```

To update, `cd` into your local `dotfiles` repository and then:

```bash
git pull origin master && sh setup.sh
```

### Git-free install

To install these dotfiles without Git:

```bash
curl -#L https://github.com/vascoalramos/dotfiles/tarball/master | tar -xzv --strip-components 1 --exclude={LICENSE} && sh.setup.sh
```

To update later on, just run that command again.

## Feedback

Suggestions/ improvements [welcome](https://github.com/vascoalramos/dotfiles/issues)!

## Author

-   **Vasco Ramos:** [vascoalramos](https://github.com/vascoalramos)

## Acknowledgments

-   [Mathias Bynens](https://mathiasbynens.be/) and his [dotfiles](https://github.com/mathiasbynens/dotfiles) repository
-   [Zell Liew](https://zellwk.com/) and his [dotfiles](https://github.com/zellwk/dotfiles) repository
-   [Brittany Chiang](https://brittanychiang.com/) and her [dotfiles](https://github.com/bchiang7/dotfiles) repository
-   [João Marques](https://jmarques.icu/) and his [machine-setup](https://github.com/joao-p-marques/machine-setup) repository
