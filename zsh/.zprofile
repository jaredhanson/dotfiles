if command -v /opt/homebrew/bin/brew >/dev/null ; then
	eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# TODO: Add pyenv to path, if needed
export PYENV_ROOT="$HOME/.pyenv"
