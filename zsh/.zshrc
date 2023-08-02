# =============================================================================
# Python Developer Environment
# =============================================================================

# [pyenv][1] allows switching between multiple versions of Python.
#
# To install a version of Python, execute:
#   $ pyenv install 3.11.4
#
# To set the default version of Python, execute:
#   $ pyenv global 3.11.4
#
# [1]: https://github.com/pyenv/pyenv

if command -v pyenv >/dev/null ; then
  eval "$(pyenv init -)"
fi
