# ~ / .dotfiles / postgresql

## Install

### macOS

```sh
brew install libpq
```

```sh
==> Caveats
==> libpq
libpq is keg-only, which means it was not symlinked into /opt/homebrew,
because conflicts with postgres formula.

If you need to have libpq first in your PATH, run:
  echo 'export PATH="/opt/homebrew/opt/libpq/bin:$PATH"' >> ~/.zshrc

For compilers to find libpq you may need to set:
  export LDFLAGS="-L/opt/homebrew/opt/libpq/lib"
  export CPPFLAGS="-I/opt/homebrew/opt/libpq/include"

For pkg-config to find libpq you may need to set:
  export PKG_CONFIG_PATH="/opt/homebrew/opt/libpq/lib/pkgconfig"
```
