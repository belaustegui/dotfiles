# Load generic login-shell configuration
source ~/.profile

# $PS1 will be set if this is an interactive shell
# It's an interactive shell, load interactve settings
if [ -n "$PS1" ]; then
  source ~/.bashrc
fi