# ~ / .dotfiles / python

[Python](https://www.python.org/) is a high-level programming language ideal for
scripting and rapid application development.

## Install

I use [`pyenv`](https://github.com/pyenv/pyenv) to install and switch between
multiple versions of Python.

### pyenv

Install `pyenv`.

```sh
brew install pyenv
```

To install a version of Python, execute:

```sh
pyenv install 3.11.4
```

This command will download and install Python to `$HOME/.pyenv/versions/{version}`.

To set the default version of Python, execute:

```sh
pyenv global 3.11.4
```

This command will update the configuration file at `$HOME/.pyenv/version`.

## Configure

```sh
stow python
```

## Usage

To print the version number, execute:

```sh
python --version
```

### pyenv

To display the currently actived version of Python, execute:

```sh
pyenv version
```

To list installed versions of Python, execute:

```sh
pyenv versions
```

To use a specific version of Python in the current shell, execute:

```sh
pyenv shell 3.10.12
```

To use a specific version of Python for a project, execute:

```sh
pyenv local 3.10.12
```

This command will update the configuration file at `$PWD/.python-version`.
