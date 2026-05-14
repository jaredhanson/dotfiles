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
