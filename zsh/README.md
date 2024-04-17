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

When zsh starts, it [reads from files](https://zsh.sourceforge.io/Intro/intro_3.html) to initialize the environment.  These [files](https://unix.stackexchange.com/questions/71253/what-should-shouldnt-go-in-zshenv-zshrc-zlogin-zprofile-zlogout/71258#71258), in order, are

- `$HOME/.zshenv`
- `$HOME/.zprofile`
- `$HOME/.zshrc`
- `$HOME/.zlogin`

`.zshev` should contain commands to set the search path and other important
environment variables.

`.zshrc` is sourced in interactive shells.  It should contain commands to set
aliases, functions, options, key bindings, etc.




