# ~ / .dotfiles / nix

## Install

Install via The [Determinate Nix Installer](https://github.com/DeterminateSystems/nix-installer)

```sh
curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install
```

(NOTE: I don't know why, but it was recommended)

This command nicely printed out what actions is was going to take.

```
`nix-installer` needs to run as `root`, attempting to escalate now via `sudo`...
Password:
Nix install plan (v0.19.0)
Planner: macos (with default settings)

Planned actions:
* Create an encrypted APFS volume `Nix Store` for Nix on `disk1` and add it to `/etc/fstab` mounting on `/nix`
* Extract the bundled Nix (originally from /nix/store/s0wa36rn6xxj15vc2g5pvcgn0q5ki78f-nix-binary-tarball-2.21.2/nix-2.21.2-x86_64-darwin.tar.xz)
* Create a directory tree in `/nix`
* Move the downloaded Nix into `/nix`
* Create build users (UID 301-332) and group (GID 30000)
* Configure Time Machine exclusions
* Setup the default Nix profile
* Place the Nix configuration in `/etc/nix/nix.conf`
* Configure the shell profiles
* Configuring zsh to support using Nix in non-interactive shells
* Create a `launchctl` plist to put Nix into your PATH
* Configure Nix daemon related settings with launchctl
* Remove directory `/nix/temp-install-dir`

Proceed? ([Y]es/[n]o/[e]xplain): Y
```



