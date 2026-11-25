# ~ / .dotfiles / rex

[Rex](https://www.superlogical.com/rex/) is a terminal multiplexer.  Its server
keeps every session, window, and block (pane) across restarts, and starts a
fresh shell in each block with the same `REX_BLOCK` environment variable it
had before.

The shell itself is new, though, so its history is gone.  This package gives
each block its own history file, keyed by that ID, so a restored block picks
up the history its predecessor had.

## Install

Install the macOS application from the [Rex](https://www.superlogical.com/rex/)
website.

## Configure

```sh
stow rex
```

This links `~/.zshrc.d/rex`, which `.zshrc` sources in every interactive
shell.  Outside Rex, where `REX_BLOCK` is unset, it does nothing.

## Usage

Inside Rex, each block writes its history to:

```
~/.local/state/rex/history/<block-id>
```

Every command is written as soon as it finishes, so a shell that Rex ends
without warning loses nothing.

A new block starts with the history of the other blocks in its session, most
recent nearest.  Rex is asked once, with `rex block ls`, which blocks those
are.  If it can't answer, or none of them has history yet, the original
history is read instead.  That seed is read into memory only.  The block's own
file holds just what was typed in it.

Each command is also copied to the history file the shell would otherwise
have used (`~/.zsh_history` by default), so it remains a complete, searchable
record across sessions and non-Rex shells.  To keep history strictly per
block, set `REX_MIRROR_HISTORY=0` in a file that loads before `.zshrc.d`, such
as `~/.zprofile.local`.

History files for closed blocks are not removed.  Cleaning them up is left to
Rex-side tooling.

To check which file a shell is using:

```sh
echo $HISTFILE
```
