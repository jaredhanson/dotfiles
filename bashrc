# -------------------------------------------------------------------
# RUBY ENVIRONMENT
# -------------------------------------------------------------------

# Load RVM into shell.
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Use default version of Ruby.
# To set the default version of Ruby:
# $ rvm --default use 1.9.2
rvm default


# -------------------------------------------------------------------
# NODE ENVIRONMENT
# -------------------------------------------------------------------

# Load NVM (Node Version Manager) into shell.
[[ -s "$HOME/.nvm/nvm.sh" ]] && source "$HOME/.nvm/nvm.sh"

# Use default version of Node.
# To set the default version of Node:
# $ nvm alias default v0.4.0
nvm use default


# -------------------------------------------------------------------
# LOCAL CONFIGURATION
# -------------------------------------------------------------------

# Load .bashrc.local for system-specific settings
if [ -f ~/.bashrc.local ]; then
  source ~/.bashrc.local
fi
