# ~ / .dotfiles / zig

[`zig`](https://ziglang.org/) is a general-purpose programming language and
toolchain for maintaining robust, optimal and reusable software.

## Install

Zig is not yet stable, and release builds tend to become stale given the current
speed of development.  As such, use of nightly builds is encouraged.

Tracking the master branch results in a proliferation of versions to manage.
While this can be done using [direct downloads](https://ziglang.org/learn/getting-started/#direct-download)
and setting $PATH accordingly, using a version manager such as [`asdf`](../asdf/)
is my preferred approach.

### asdf

Add the [Zig plugin](https://github.com/cheetah/asdf-zig) to [`asdf`](https://asdf-vm.com/).

```sh
$ asdf plugin add zig
```

This command will download and install the plugin to `$HOME/.asdf/plugins/zig`.

To install a nightly build of Zig, execute:

```sh
$ asdf install zig 0.12.0-dev.3457+341857e5c
```

To set the default version of a zig, execute:

```sh
$ asdf global zig 0.12.0-dev.3457+341857e5c
```

This command will update the configuration file at `$HOME/.tool-versions`.

## Usage

```
$ zig version
```
