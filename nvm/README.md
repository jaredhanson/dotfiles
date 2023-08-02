# ~ / .dotfiles / nvm

[nvm](https://github.com/nvm-sh/nvm) allows installing and switching between
multiple versions of [Node.js](https://nodejs.org/).

## Install

```sh
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.4/install.sh | bash
```

## Usage

To install a version of Node.js, execute:

```sh
$ nvm install 20.5.0
```

This command will download and install Node.js to `$HOME/.nvm/versions/node/v{version}`.

To use a specific version of Node.js, execute:

```sh
$ nvm use 18.17.0
```

To display the currently active version of Node.js, execute:

```
$ nvm current
```

To list installed versions of Node.js, execute:

```sh
$ nvm ls
```

To set the default version of Node.js, execute:

```sh
$ nvm alias default 20.5.0
```
