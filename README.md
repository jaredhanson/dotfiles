# dotfiles

[Jared Hanson](https://www.jaredhanson.me/)'s user-specific application configuration.

[dotfiles](https://en.wikipedia.org/wiki/Hidden_file_and_hidden_directory#Unix_and_Unix-like_environments)
are configuration files that, by convention, start with a `.` character.
Applications in UNIX-like operating systems (such as Linux and Mac OS X) load
configuration from dotfiles.  This configuration is particularly applicable
to software development tools.

This repository contains my personal dotfiles, configuring the tools I use in
my own development environment and workflow.  In the spirit of [open collaboration](https://en.wikipedia.org/wiki/Open_collaboration),
they are shared with the [community](https://dotfiles.github.io).  The
repository also serves as an effective mechanism for synchronizing settings
across machines.

## Install

```sh
$ git clone git@github.com:jaredhanson/dotfiles.git ~/.dotfiles
```

## Usage

[Stow](https://www.gnu.org/software/stow/) is used to manage configuration files
in the home directory.

### Initialization

Clone the repository to a subdirectory of `$HOME`.

```sh
$ git clone git@github.com:jaredhanson/dotfiles.git $HOME/.dotfiles
```

`$HOME/.dotfiles` is the _stow directory_.  Subsequent `stow` commands must
be executed with the current directory set to the stow directory.

```sh
$ cd $HOME/.dotfiles
```

### Install

To install the configuration files for a package (`git` in this example):

```
$ stow git
```

This command will create a symlink from `$HOME/.gitconfig` to `$HOME/.dotfiles/git/.gitconfig`,
as well as any other configuration files for the package.

### Uninstall

To unsintall the configuration files for a package (`git` in this example):

```sh
$ stow -D git
```

#### Setting up a new macOS system


Because these dotfiles are stored on GitHub, they first need to be cloned to the
local system.  But in order to do this, the local system needs access to GitHub.

This can be done by [generating a new SSH key](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent#generating-a-new-ssh-key)
for the new system.

```
$ ssh-keygen -t ed25519 -C "jaredhanson@macbook-pro-2021.local"
```

```sh
$ cd ~/.dotfiles/brew
$ make install

$ cd ~/.dotfiles/stow
$ make install
```


# New Instructions

Install homebrew

$ eval "$(/opt/homebrew/bin/brew shellenv)"

Install dependencies, including stow

$ brew bundle

stow zsh
