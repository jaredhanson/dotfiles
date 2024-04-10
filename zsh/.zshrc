#print .zshrc
#print $PATH
#print ....
#
#if [[ -o login ]]; then
#  print yes
#else
#  print no
#fi

# =============================================================================
# Developer Environment
# =============================================================================

[ -s "$HOME/.asdf/asdf.sh" ] && . "$HOME/.asdf/asdf.sh"

if command -v direnv >/dev/null ; then
	eval "$(direnv hook zsh)"
fi


# =============================================================================
# Python Developer Environment
# =============================================================================

# [pyenv][1] allows switching between multiple versions of Python.
#
# To install a version of Python, execute:
#   $ pyenv install 3.11.4
#
# To set the default version of Python, execute:
#   $ pyenv global 3.10.12
#
# [1]: https://github.com/pyenv/pyenv

if command -v pyenv >/dev/null ; then
	export PATH="$PYENV_ROOT/bin:$PATH"
	eval "$(pyenv init -)"
fi


# =============================================================================
# Node.js Developer Environment
# =============================================================================

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

#export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
