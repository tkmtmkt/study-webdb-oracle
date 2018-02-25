# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

. ~/.dotfiles/_bash_aliases
. ~/.dotfiles/_bash_profile

PATH=/opt/payara41/bin:/opt/payara41/glassfish/bin:$PATH

export PATH
