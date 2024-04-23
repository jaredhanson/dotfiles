# ~ / .dotfiles / zsh

[Zsh](https://www.zsh.org/) is a UNIX shell designed for interactive use and
scripting.

## Install

### macOS

As of macOS 10.15 (Catalina), `zsh` is the default shell.

## Configure

```sh
stow zsh
```

## Usage

When `zsh` starts, it sources the following files, in order, to initialize the
environment.

[reads from files](https://zsh.sourceforge.io/Intro/intro_3.html) to initialize the environment.  These [files](https://unix.stackexchange.com/questions/71253/what-should-shouldnt-go-in-zshenv-zshrc-zlogin-zprofile-zlogout/71258#71258), in order, are

- `/etc/zshenv`
- `$HOME/.zshenv`
- `/etc/zprofile` (if the shell is a login shell)
- `$HOME/.zprofile` (if the shell is a login shell)
- `/etc/zshrc` (if the shell is interactive)
- `$HOME/.zshrc` (if the shell is interactive)
- `/etc/zlogin` (if the shell is a login shell)
- `$HOME/.zlogin` (if the shell is a login shell)

`.zshev` should contain commands to set the search path and other important
environment variables.

`.zshrc` is sourced in interactive shells.  It should contain commands to set
aliases, functions, options, key bindings, etc.




