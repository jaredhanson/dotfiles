# ~ / .dotfiles / node

[Node.js](https://nodejs.org/) is a [JavaScript](https://en.wikipedia.org/wiki/JavaScript)
runtime for servers, web applications, command line tools and scripts.

## Install

I use [`nvm`](https://github.com/nvm-sh/nvm) to install and switch between
multiple versions of Node.

### nvm

Install `nvm`.

```sh
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.4/install.sh | bash
```

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

## Configure

```sh
stow node
```

## Usage

To print the version number, execute:

```sh
node -v
```

### nvm

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
