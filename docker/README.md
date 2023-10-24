# ~ / .dotfiles / docker

[`docker`](https://www.docker.com/) is a runtime for containers.

## Install

`docker` can be [installed][https://docs.docker.com/get-docker/] via either
[Docker Desktop](https://docs.docker.com/desktop/) or [Docker Engine](https://docs.docker.com/engine/).

#### macOS

Install [Docker Desktop for Mac](https://docs.docker.com/desktop/install/mac-install/).

## Usage

To build an image, execute:

```sh
docker build -t <name> .
```

This command will build a new image named `<name>` using the `Dockerfile` in the
current directory `.`.

To run a new container, execute:

```sh
docker run -d -p 127.0.0.1:8080:3000 <name>
```

This command will create and run a new container from the imaged named `<name>`.
The container will run in the background (`-d`) and the address `127.0.0.1:8080`
on the host will be mapped to port `3000` on the container (`-p`).

To list containers, execute:


```sh
$ docker ps
```

By default, the command will list running containers.  To list all containers,
including those that have exited, execute:

```sh
$ docker ps -a
```

To stop a running container, execute:

```sh
docker stop <container-id>
```

This command will stop the container with ID `<container-id>`.  The ID can be
obtained from the output of `docker ps`.
