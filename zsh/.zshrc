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

for file in $HOME/.zshrc.d/*; do
	. $file
done
