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

```sh
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

```sh
$ gpg --list-keys
```

To list all secret keys in the keyring:

```sh
$ gpg --list-secret-keys
```

To export a public key from the keyring in ASCII armored output:

```sh
$ gpg --export -a alice@example.com > public.asc
```

To export a secret key from the keyring in ASCII armored output:

```sh
$ gpg --export-secret-key -a alice@example.com > secret.asc
```

To import a public key into the keyring:

```sh
$ gpg --import public.asc
```

To import a secret key into the keyring:

```sh
$ gpg --import --allow-secret-key-import secret.asc
```

To remove a public key from the keyring:

```sh
$ gpg --delete-key alice@example.com
```

Note that if there is a secret key for the public key, it must be deleted first.
Otherwise the command will fail.

To remove a secret key from the keyring:

```sh
$ gpg --delete-secret-key alice@example.com
```

To sign and encrypt a file from a sender (alice@example.com) to a recipient
(bob@example.com).

```sh
$ gpg -se -u alice@example.com -r bob@example.com example.txt
```

This creates a `example.txt.gpg` file containing the encrypted data.

To decrypt a file:

```sh
gpg -d example.txt.gpg > example.txt
```

If the decrypted file is signed, the signature is also verified.
