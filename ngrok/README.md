# ~ / .dotfiles / ngrok

## Install

### macOS

```sh
brew install ngrok/ngrok/ngrok
```

## Log In

Authenticate to ngrok by adding [your authtoken](https://dashboard.ngrok.com/get-started/your-authtoken)
to the [configuration file](https://ngrok.com/docs/agent/config/).

```sh
ngrok config add-authtoken XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
```

On macOS, this command will save the authtoken to the configuration file at
`$HOME/Library/Application Support/ngrok/ngrok.yml`.

## Usage

$ ./ngrok http 8080
