# ~ / .dotfiles / caddy

[Caddy](https://caddyserver.com/) is a reverse proxy server to serve sites,
services and apps.

## Install

### macOS

```sh
brew install caddy
```

```sh
When running the provided service, caddy's data dir will be set as
  `/opt/homebrew/var/lib`
  instead of the default location found at https://caddyserver.com/docs/conventions#data-directory

zsh completions have been installed to:
  /opt/homebrew/share/zsh/site-functions

To start caddy now and restart at login:
  brew services start caddy
Or, if you don't want/need a background service you can just run:
  XDG_DATA_HOME="/opt/homebrew/var/lib" /opt/homebrew/opt/caddy/bin/caddy run --config /opt/homebrew/etc/Caddyfile
```


## Configure

```sh
stow caddy
```

## Usage

```
caddy run --config ~/.config/caddy/Caddyfile
```


https://caddyserver.com/docs/quick-starts/reverse-proxy
https://datatracker.ietf.org/doc/html/rfc6761#section-6.3

https://bugs.webkit.org/show_bug.cgi?id=160504
