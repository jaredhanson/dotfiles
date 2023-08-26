# ~ / .dotfiles / ykman

[`ykman`](https://developers.yubico.com/yubikey-manager/) allows managing and
configuring a [YubiKey](https://www.yubico.com/).

## Install

```sh
brew install ykman
```

## Usage

To list attached YubiKeys:

```sh
$ ykman list
```

To show information about attached YubiKeys:

```
$ ykman info
```

#### FIDO

To display general status of the FIDO application:

```
$ ykman fido info
```

To list credentials stored on a YubiKey:

```
$ ykman fido credentials list
```
