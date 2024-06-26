# ~ / .dotfiles / ollama

[Ollama](https://ollama.com/) allows running large language models locally.

## Install

### macOS

[Download](https://ollama.com/download/mac) the archive for macOS.  It will extract
into an app bundle which should be placed in the `/Applications` directory.  Running
the app will prompt to install `ollama` to `/usr/local/bin`.

## Usage

To run a model, execute:

```
ollama run llama2
```

This command will download the model's manifest to `$HOME/.ollama/models/manifests/registry.ollama.ai/library/{model}`.
Associated blobs will be downloaded to `$HOME/.ollama/models/blobs`.
