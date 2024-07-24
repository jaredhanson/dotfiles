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

```sh
brew services start caddy
```

This will add a LaunchAgent configuration file to:
~/Library/LaunchAgents/homebrew.mxcl.caddy.plist

Create a Caddyfile for homebrew that loads the stow'd dotfile:

/opt/homebrew/etc/Caddyfile

```
import {$HOME}/.config/caddy/Caddyfile
```

```sh
brew services start caddy
```

Stops the service and removes the config file




https://caddyserver.com/docs/quick-starts/reverse-proxy
^ Talks about domains ending in .localhost


https://datatracker.ietf.org/doc/html/rfc6761#section-6.3

https://bugs.webkit.org/show_bug.cgi?id=160504
