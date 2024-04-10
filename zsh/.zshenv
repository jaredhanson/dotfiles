#print .zshenv
#print $PATH
#print ....

if [ -d /opt/homebrew/opt/libpq/bin ]; then
	export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
fi

# NOTE: On macOS, any PATHs prepended here, end up at the end of the path,
# since path_helper executed from /etc/zprofile resets the path


[ -s "$HOME/.cargo/env" ] && . "$HOME/.cargo/env"
