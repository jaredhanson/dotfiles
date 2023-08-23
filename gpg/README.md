# ~ / .dotfiles / gpg

[`gpg`](https://gnupg.org/) is a cryptographic software suite that signs and
encrypts data and communications using the [OpenPGP](https://datatracker.ietf.org/doc/html/rfc4880)
standard.

## Install

```sh
brew install gnupg
```

## Usage

To generate a new key pair using the current default parameters:

```bash
$ gpg --gen-key
GnuPG needs to construct a user ID to identify your key.

Real name: 
Email address: 
You selected this USER-ID:
    "Alice Smith <alice@example.com>"

Change (N)ame, (E)mail, or (O)kay/(Q)uit? 

┌──────────────────────────────────────────────────────┐
│ Please enter the passphrase to                       │
│ protect your new key                                 │
│                                                      │
│ Passphrase: ________________________________________ │
│                                                      │
│       <OK>                              <Cancel>     │
└──────────────────────────────────────────────────────┘
```

To list all public keys in the keyring:

```bash
$ gpg --list-keys
```

To list all secret keys in the keyring:

```bash
$ gpg --list-secret-keys
```

To export a public key from the keyring in ASCII armored output:

```bash
$ gpg --export -a alice@example.com > public.asc
```

To export a secret key from the keyring in ASCII armored output:

```bash
gpg --export-secret-key -a alice@example.com > secret.asc
```
