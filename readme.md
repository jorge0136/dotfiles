# Dotfiles

This is a guide to setting up my personal development environment. It's meant get me up and running
as fast as possible on a clean install of macOS. After running through all of the installation
scripts and instructions, you'll have an environment configured with the following tools.

* **[Homebrew](http://mxcl.github.com/homebrew/)**: A bad ass little package manager for macOS.
* **[Git](https://git-scm.com/)**: Everyone's favorite distributed version control system.
* **[Node.js](https://nodejs.org/en/)**: The JavaScript runtime.
* **[Ruby](https://www.ruby-lang.org/en/)**: A programming language with a focus on simplicity and
  productivity.
* **[PostgreSQL](http://www.postgresql.org/)**: An open-source SQL database.
* **[Microsoft VS Code](https://code.visualstudio.com/)**  A text editor with plugins.
* **[Scroll Reverser](https://pilotmoon.com/scrollreverser/)** to get mice scrolling correctly on OSX, while leaving the touchpad alone.
* **[Oh-My-ZSH](https://ohmyz.sh/)** Is a alternative shell, which allows for customization of the command line.

In addition, these dotfiles install a ton of small, useful utilities command-line utilities and
system applications, which can be viewed in the [Brewfile](Brewfile). They also add several custom
commands.

## Prerequisites

Before anything else, install the system updates.

``` shell
softwareupdate -ia
```

Then, install Xcode and accept its license.

``` shell
xcode-select --install
sudo xcodebuild -license accept
```

## Installation

Start by cloning the dotfiles repo.

``` shell
git clone https://github.com/jorge0136/dotfiles $HOME/.dotfiles
```

[RCM](https://github.com/thoughtbot/rcm) is a handy utility to manage the linking of dotfiles. Most
of the applications and utilities in these dotfiles (including Homebrew) can be installed by running
the following command.

This will show what files are being moved into $HOME
``` shell
RCRC=$HOME/.dotfiles/rcrc lsrc
```

This will do the actual execution.
``` shell
RCRC=$HOME/.dotfiles/rcrc rcup
```

This executes the [pre-up](hooks/pre-up-hooks) and [post-up](hooks/post-up-hooks) scripts, which
install applications and configure the system. These scripts are idempotent, so feel free to run the
`rcup` command as many times as you'd like.

### VScode

Using the following tool to sync settings to and from my github gist. Secure your github token to [download settings again.](https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync)


### Git

In order to connect with GitHub, you'll need to generate an SSH key. Follow the
[instructions](https://help.github.com/articles/generating-an-ssh-key/) on Github.

### macOS

Mathias Bynens maintains [a script](https://mths.be/osx) that configures several macOS system and
application settings in one go. Because macOS is constantly updating, it's probably a good idea to
pull it down an modify every once in a while. My latest local iteration is kept in the
[macos.sh](macos.sh) script.

### Shell

Z shell `zsh` and `Oh-my-zsh` should be installed by RVM during `rcup`.

Check the default shell via
``` shell
echo $SHELL
```

If one needs to set the shell it can be done via
``` shell
chsh -s /bin/zsh
```

## Interesting dotfiles

I drew heavy inspiration from the following dotfiles

[Landon Shcropp's dotfiles](https://github.com/LandonSchropp/dotfiles)

[Thoughtbot dotfiles](https://github.com/thoughtbot/dotfiles)

[Paul Irish's dotfiles](https://github.com/paulirish/dotfiles)

### TODO:

* Add install step for `gcloud sdk`. Find brew install instructions vs. curl script to install the google binary. https://github.com/Homebrew/homebrew-core/issues/583
  * Got root install fixed on work computer, now just need to fix the initial install script. Have yet to run `rcrc` at work because of it.
* Add style guides
* Add template for bash script
* Investigate `nvm`, is it installing correctly?
* Install kubectl extension `krew`? https://github.com/GoogleContainerTools/krew
  * I think at this point, most of what is needed is a kubectl update to 1.12 or greater.
