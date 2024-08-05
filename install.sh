if ! command -v zellij &> /dev/null
then
	if ! command -v cargo 
	then
		echo "Installing cargo"
		curl $(fwdproxy-config curl) https://sh.rustup.rs -sSf | sh -s -- -y
		source ~/.cargo/env
	fi
	echo "Installing zellij."
	cargo install --locked zellij
	rustup update
fi
