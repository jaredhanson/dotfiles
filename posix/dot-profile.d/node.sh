# Load NVM (Node Version Manager) into shell.
[[ -s "$HOME/.nvm/nvm.sh" ]] && source "$HOME/.nvm/nvm.sh"

# Use default version of Node.
# To set the default version of Node:
# $ nvm alias default v0.4.0
if command -v nvm &>/dev/null ; then
  nvm use default
fi
