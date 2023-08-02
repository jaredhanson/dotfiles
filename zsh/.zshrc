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

# [nvm][1] allows switching between multiple versions of Node.js.
#
# To install a version of Node.js, execute:
#   $ nvm install 20.5.0
#
# To set the default version of Node.js, execute:
#   $ nvm alias default 18.17.0
#
# [1]: https://github.com/nvm-sh/nvm

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
