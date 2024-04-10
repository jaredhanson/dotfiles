#print .zprofile
#print $PATH
#print ....

if command -v /opt/homebrew/bin/brew >/dev/null ; then
	eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# TODO: Add pyenv to path, if needed
export PYENV_ROOT="$HOME/.pyenv"

_dot_join() {
  local IFS="$1"
  shift
  echo "$*"
}


_dot_path_helper() {
	local spath=()
	local file
	local line

	for file in $HOME/.paths.d/*(.); do
		while IFS= read -r line; do
			spath+=$line
		done < $file
		export PATH="$(_dot_join : "${spath[@]}"):$PATH"
	done
}

_dot_path_helper
