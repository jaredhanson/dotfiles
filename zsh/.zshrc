#print .zshrc
#print $PATH
#print ....
#
#if [[ -o login ]]; then
#  print yes
#else
#  print no
#fi

for file in $HOME/.zshrc.d/*; do
	. $file
done
