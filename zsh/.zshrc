#print .zshrc
#print $PATH
#print ....
#
#if [[ -o login ]]; then
#  print yes
#else
#  print no
#fi

fpath=(${XDG_DATA_HOME:-$HOME/.local/share}/zsh/site-functions $fpath)
for func in ${XDG_DATA_HOME:-$HOME/.local/share}/zsh/site-functions/*(-.N:t); do
  autoload -Uz $func
done


autoload -Uz compinit && compinit

source "${XDG_DATA_HOME:-$HOME/.local/share}/zsh/plugins/@zpm/zpm.zsh"
zpm load zpm-zsh/colors
zpm load zpm-zsh/autoenv

for file in $HOME/.zshrc.d/*; do
	. $file
done

[ -f "$HOME/.zshrc.local" ] && . "$HOME/.zshrc.local"
