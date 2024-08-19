# ~ / .dotfiles / doctl

[`doctl`](https://docs.digitalocean.com/reference/doctl/) allows deploying and managing
infrastructure on [DigitalOcean](https://www.digitalocean.com/).

## Install

### macOS

```sh
brew install doctl
```

## Log In

To log in to DigitalOcean, execute:

```sh
doctl auth init
```

This command will prompt for an access token, which can be obtained by creating
a [personal access token](https://cloud.digitalocean.com/account/api/tokens) for
accessing the DigitalOcean API.

On macOS, this command will save the access token to the configuration file at
`$HOME/Library/Application Support/doctl/config.yaml`.

