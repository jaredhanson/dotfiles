# ~ / .dotfiles / asdf

[asdf](https://asdf-vm.com/) allows installing and switching between
multiple versions of various tools.

## Install

```sh
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.12.0
```

## Usage

To install a plugin for managing a tool, execute:

```sh
$ asdf plugin add deno
```

This command will download and install the plugin to `$HOME/.asdf/plugins/{name}`.

To install a version of a tool, execute:

```sh
$ asdf install deno 1.35.3
```

This command will download and install the tool to `$HOME/.asdf/installs/{name}/{version}`.

To set the default version of a tool, execute:

```sh
$ asdf global deno 1.29.4
```

This command will update the configuraiton file at `$HOME/.tool-versions`.
