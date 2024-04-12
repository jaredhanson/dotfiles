# ~ / .dotfiles / asdf

[`asdf`](https://asdf-vm.com/) allows installing and switching between
multiple versions of various tools.

## Install

```sh
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.12.0
```

## Configure

```sh
stow asdf
```

## Usage

To install a plugin for managing a tool, execute:

```sh
asdf plugin add deno
```

This command will download and install the plugin to `$HOME/.asdf/plugins/{name}`.

To install a version of a tool, execute:

```sh
asdf install deno 1.35.3
```

This command will download and install the tool to `$HOME/.asdf/installs/{name}/{version}`.

To set the default version of a tool, execute:

```sh
asdf global deno 1.35.3
```

This command will update the configuration file at `$HOME/.tool-versions`.

To display the currently actived version of a tool, execute:

```sh
asdf current deno
```

To list installed versions of a tool, execute:

```sh
asdf list deno
```

To use a specific version of a tool in the current shell, execute:

```sh
asdf shell deno 1.29.4
```

This command will set the environment variable at `$ASDF_{NAME}_VERSION`.

To use a specific version of a tool for a project, execute:

```sh
asdf local deno 1.29.4
```

This command will update the configuration file at `$PWD/.tool-versions`.
