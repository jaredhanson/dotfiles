# ~ / .dotfiles / age

[`age`](https://age-encryption.org/) is a modern file encryption tool.

## Install

```sh
brew install age
```

#### Install Secure Enclave plugin

```sh
brew tap remko/age-plugin-se https://github.com/remko/age-plugin-se
brew install age-plugin-se
```

## Usage

To generate a new key pair (a.k.a. identity) and write it to a file:

```sh
age-keygen -o key.txt
```

To generate a new passphrase-protected key pair and write it to a file:

```sh
age-keygen | age -p > key.age
```

To print the public key of an identity file to the terminal:

```sh
age-keygen -y key.txt
```

To encrypt a file to a recipient:

```sh
age -r age1ql3z7hjy54pw3hyww5ayyfg7zqgvc7w3j2elw8zmrj2kg5sfn9aqmcac8p -o example.jpg.age example.jpg
```

To decrypt a file for a recipient:

```sh
age -d -i key.txt -o example.jpg example.jpg.age
```

To encrypt a file with a passphrase:

```sh
age -p -o example.jpg.age example.jpg
```

To decrypt a file with a passphrase:

```sh
age -d -o example.jpg example.jpg.age
```
