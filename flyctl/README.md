# ~ / .dotfiles / flyctl

[`flyctl`](https://fly.io/docs/flyctl/) allows managing and deploying
applications on [Fly.io](https://fly.io/).

## Install

### macOS

```sh
brew install flyctl
```

## Log In

To log in to Fly.io, execute:

```sh
flyctl auth login
```

This command will prompt for authentication by opening the web browser.  Once
authenticated, a token will be stored in the the configuration file at
`$HOME/.fly/config.yml`.

To log out of Fly.io, execute:

```
flyctl auth logout
```

## Usage
