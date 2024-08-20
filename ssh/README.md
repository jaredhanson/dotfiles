# ~ / .dotfiles / ssh

[SSH](https://www.openssh.com/) is...

## Configure

```sh
stow ssh
```

## Usage

To generate a key, execute:

```sh
$ ssh-keygen -t ed25519 -C "jaredhanson@macbook-pro.local"
```

To add a key (also known as an identity) to `ssh-agent`, execute:

```sh
ssh-add ~/.ssh/id_ed25519
```

To add a key to `ssh-agent` and store the passphrase in the user's keychain on
macOS, execute the command with the `--apple-use-keychain` option:

```sh
ssh-add --apple-use-keychain ~/.ssh/id_ed25519
```

When the passphrase is stored in the keychain, it is available anytime
the keychain is unlocked (including when logged in after a reboot).

TODO: See if additional config is necessary? ([here](https://apple.stackexchange.com/questions/48502/how-can-i-permanently-add-my-ssh-private-key-to-keychain-so-it-is-automatically), [here](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent))

To list all identities currently represented by the agent, execute:

```sh
ssh-add -l
```

To remove an identity from the agent, execute:

```
ssh-add -d ~/.ssh/id_ed25519.pub
```

To remove an identity from the agent and remove the passphrase in the user's
keychain on macOS, execute the command with the `--apple-use-keychain` option:

```sh
ssh-add -d --apple-use-keychain ~/.ssh/id_ed25519.pub
```

To remove all identities from the agent, execute:

```
ssh-add -D
```
