# My dotfiles

![Screenshot of my shell prompt](https://i.imgur.com/yec0STZ.png)

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
curl -#L https://github.com/vascoalramos/dotfiles/tarball/master | tar -xzv --strip-components 1 --exclude={LICENSE} && sh setup.sh
```

To update later on, just run that command again.

## Tools & Software

<details>
<summary>Package Managers</summary>

-   [Snap](https://snapcraft.io/)
-   [Pip](https://pypi.org/project/pip/)
-   [Pipenv](https://pypi.org/project/pipenv/)
-   [Npm](https://www.npmjs.com/)

</details>

<details>
<summary>CLI Tools & Utilities</summary>

-   [ZSH](https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH)
-   [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh)
-   [Spaceship Prompt for ZSH](https://github.com/denysdovhan/spaceship-prompt)
-   [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
-   [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)

</details>

<details>
<summary>Browsers</summary>

-   [Brave](https://brave.com/)
-   [Chromium](https://www.chromium.org/Home/)
-   [Firefox](https://www.mozilla.org/en-US/firefox/new/)

</details>

<details>
<summary>Development</summary>

-   [Visual Studio Code](https://code.visualstudio.com/)
-   [PyCharm](https://www.jetbrains.com/pycharm/)
-   [IntelliJ](https://www.jetbrains.com/idea/)
-   [Postman](https://www.getpostman.com/)
-   [Docker](https://docs.docker.com/engine/install/ubuntu/)
-   [Docker Compose](https://docs.docker.com/compose/install/#install-using-pip)

</details>

<details>
<summary>Communication</summary>

-   [Slack](https://slack.com/)
-   [Mailspring](https://getmailspring.com/)

</details>

<details>
<summary>Miscellaneous</summary>

-   [Spotify](https://www.spotify.com/)
-   [VLC](http://www.videolan.org/)

</details>

## Feedback

Suggestions and/or improvements [welcome](https://github.com/vascoalramos/dotfiles/issues)!

## Author

-   **Vasco Ramos:** [vascoalramos](https://github.com/vascoalramos)

## Acknowledgments

-   [Mathias Bynens](https://mathiasbynens.be/) and his [dotfiles](https://github.com/mathiasbynens/dotfiles) repository
-   [Zell Liew](https://zellwk.com/) and his [dotfiles](https://github.com/zellwk/dotfiles) repository
-   [Brittany Chiang](https://brittanychiang.com/) and her [dotfiles](https://github.com/bchiang7/dotfiles) repository
-   [João Marques](https://jmarques.icu/) and his [machine-setup](https://github.com/joao-p-marques/machine-setup) repository
