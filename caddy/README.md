# ~ / .dotfiles / caddy

[Caddy](https://caddyserver.com/) is a reverse proxy server to serve sites,
services and apps.

## Install

https://caddyserver.com/docs/install

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

When you first start caddy with a site that uses `*.localhost` it will prompt for a password
after logging  a line:

```
2024/07/24 22:30:10.797	WARN	pki.ca.local	installing root certificate (you might be prompted for password)	{"path": "storage:pki/authorities/local/root.crt"}
```

followed by:

```
2024/07/24 22:33:42.951	INFO	certificate installed properly in macOS keychain
```

In Keychain, you'll find a new cert named "Caddy Local Authority - 2024 ECC Root"

The cert files can be found at: $(HOME)/Library/Application Support/Caddy/pki/authorities/local




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
