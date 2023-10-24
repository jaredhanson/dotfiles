# ~ / .dotfiles / docker

[`docker`](https://www.docker.com/) is a runtime for containers.

## Install

`docker` can be [installed][https://docs.docker.com/get-docker/] via either
[Docker Desktop](https://docs.docker.com/desktop/) or [Docker Engine](https://docs.docker.com/engine/).

#### macOS

Install [Docker Desktop for Mac](https://docs.docker.com/desktop/install/mac-install/).

## Usage

To build a container, execute:

```sh
docker build -t <name> .
```

This command will build a new image named `<name>` using the `Dockerfile` in the
current directory `.`.

To list containers, execute:


```sh
$ docker ps
```

By default, the command will list running containers.  To list all containers,
including those that have exited, execute:

```sh
$ docker ps -a
```
