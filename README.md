# dotfiles

[Jared Hanson](https://www.jaredhanson.me/)'s user-specific application configuration.

[dotfiles](https://en.wikipedia.org/wiki/Hidden_file_and_hidden_directory#Unix_and_Unix-like_environments)
are configuration files that, by convention, start with a `.` character.
Applications in UNIX-like operating systems (such as Linux and Mac OS X) load
configuration from dotfiles.  This configuration is particularly applicable
to software development tools.

This repository contains my personal dotfiles, configuring the tools I use in
my development environment.  In the spirit of [open collaboration](https://en.wikipedia.org/wiki/Open_collaboration),
they are shared with the [community](https://dotfiles.github.io/).  The
repository also serves as an effective mechanism for synchronizing settings
across machines.

Each tool I use (and for which configuration is managed by this repository) has
a directory.  Within that directory is a `README` file that describes the
purpose of the tool, how to install it, and tips on usage.  Because some of
these tools are used on an infrequent basis, the `README` serves as a refresher
when using the tool in the future.  Configuration files for the tool, if any,
are also located within the directory.

## Usage

[Stow](https://www.gnu.org/software/stow/) is used to manage configuration files
in the home directory.

### Initialize

Clone the repository to a subdirectory of `$HOME`.

```sh
git clone git@github.com:jaredhanson/dotfiles.git $HOME/.dotfiles
```

`$HOME/.dotfiles` is the _stow directory_.  Subsequent `stow` commands must
be executed with the current directory set to the stow directory.

```sh
cd $HOME/.dotfiles
```

### Configure

To install the configuration files for a package (`git` in this example):

```
stow git
```

This command will create a symbolic link from `$HOME/.gitconfig` to
`$HOME/.dotfiles/git/.gitconfig`, as well as any other configuration files for
the package.

### Unconfigure

To uninstall the configuration files for a package (`git` in this example):

```sh
stow -D git
```

## Set Up

### Generate SSH Key

As a best practice, each machine should have its own SSH key.  This improves
security by allowing access to be managed and audited on a per-device basis.
In the event a device is lost or compromised, its access can be revoked without
impacting other devices.

To [generate a new SSH key](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent#generating-a-new-ssh-key):

```sh
ssh-keygen -t ed25519 -C "jaredhanson@macbook-pro-2021.local"
```

> [!TIP]
> I like to use `user@host` format for the comment, where `host` is the device
> name.

### Add SSH Key to GitHub account

Once the machine's SSH key has been generated, [add it to your GitHub account](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account#adding-a-new-ssh-key-to-your-account).

You can now [clone this repository](https://github.com/jaredhanson/dotfiles?tab=readme-ov-file#initialization),
and synchronize configuration across machines by pushing and pulling from the
remote repository.

### Prepare Operating System

To the extent possible, system-provided programs are used to install packages
and manage configuration.  This minimizes the number of dependencies needed to
set up a new machine.  In cases where these prerequisites are not provided, the
following instructions are used to prepare the operating system.

#### macOS

[macOS](https://www.apple.com/macos/) does not have a package manager, so
[Homebrew](https://brew.sh/) is used as an alternative.

##### Install Homebrew

To install Homebrew:

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

##### Install Stow

To install Stow:

```sh
brew install stow
```
