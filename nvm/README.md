# ~ / .dotfiles / nvm

I use [`nvm`](https://github.com/nvm-sh/nvm) to install and switch between
multiple versions of [Node.js](https://nodejs.org/), a [JavaScript](https://en.wikipedia.org/wiki/JavaScript)
runtime for servers, web applications, command line tools and scripts.

## Install

### nvm

Install `nvm`.

```sh
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.4/install.sh | bash
```

## Configure

```sh
stow nvm
```

## Usage

To install a version of Node, execute:

```sh
nvm install 20.5.0
```

This command will download and install Node to `$HOME/.nvm/versions/node/v{version}`.

To set the default version of Node, execute:

```sh
nvm alias default 20.5.0
```

This command will update the configuration file at `$HOME/.nvm/alias/default`.

To display the currently active version of Node.js, execute:

```sh
nvm current
```

To list installed versions of Node.js, execute:

```sh
nvm ls
```

To use a specific version of Node.js, execute:

```sh
nvm use 18.17.0
```

To confirm the version of Node.js in use, execute:

```sh
node -v
```

In order to keep spawning a new shell [fast](https://registerspill.thorstenball.com/p/how-fast-is-your-shell),
`nvm` is not loaded by default.  Projects that use `nvm` can load it via their
preferred mechanism.

### With autoenv

Add the following to `.in`:

```sh
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
```

This file will be loaded by [`autoenv`](https://github.com/zpm-zsh/autoenv) when
changing into the working directory.

### With direnv

Add the following to `.envrc`:

```sh
use nvm
```

This file will be loaded by [`direnv`](https://direnv.net/) when changing into
the working directory.

> [!NOTE]
> `direnv` loades `.envrc` into a sub-shell and only makes exported environment
> variables available to the current shell.  As such, `nvm` is not available as
> a command when using `direnv`.

## See Also

- [`bun`](../bun/) - A JavaScript runtime written in [Zig](https://ziglang.org/)
  and powered by [JavaScriptCore](https://docs.webkit.org/Deep%20Dive/JSC/JavaScriptCore.html).
