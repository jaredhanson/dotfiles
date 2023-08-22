# ~ / .dotfiles / pyenv

[`pyenv`](https://github.com/pyenv/pyenv) allows installing and switching between
multiple versions of [Python](https://www.python.org/).

## Install

```sh
brew install pyenv
```

## Usage

To install a version of Python, execute:

```sh
$ pyenv install 3.11.4
```

This command will download and install Python to `$HOME/.pyenv/versions/{version}`.

To set the default version of Python, execute:

```sh
$ pyenv global 3.11.4
```

This command will update the configuration file at `$HOME/.pyenv/version`.

To use a specific version of Python for the shell session, execute:

```sh
$ pyenv shell 3.10.12
```

To use a specific version of Python within the current working directory, execute:

```sh
$ pyenv local 3.10.12
```

This command will update the configuration file at `$PWD/.python-version`.
