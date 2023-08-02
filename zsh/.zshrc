# =============================================================================
# Developer Environment
# =============================================================================

# [asdf][1] allows switching between multiple versions of tools.
#
# To install a plugin for managing a tool, execute:
#   $ asdf plugin add deno
#
# To install a version of a tool, execute:
#   $ asdf install deno 1.35.3
#
# To set the default version of a tool, execute:
#   $ asdf global deno 1.29.4
#
# [1]: https://asdf-vm.com/

[ -s "$HOME/.asdf/asdf.sh" ] && . "$HOME/.asdf/asdf.sh"


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
