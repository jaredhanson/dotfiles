# Usage: use nvm [<version>]
#
# Loads the specified Node.js version into the environment.
#
# If a partial Node.js version is passed (i.e. `4.2`), a fuzzy match is
# performed and the highest matching version installed is selected.
#
# If no version is passed, it will look at the '.nvmrc' file in the current
# directory if it exists.
#
use_nvm() {
  local version=${1:-}

  if [[ -z $version && -f .nvmrc ]]; then
    version=$(<.nvmrc)
  fi

  source "$HOME/.nvm/nvm.sh"
  if [[ -n $version ]]; then
    nvm use $version
  fi
}
