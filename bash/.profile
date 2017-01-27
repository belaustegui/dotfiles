# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.

# Global composer packages
PATH="$HOME/.config/composer/vendor/bin:$PATH"
# Heroku toolbelt
PATH="/usr/local/heroku/bin:$PATH"
# Custom user binaries
PATH="$HOME/bin:$PATH"

# include .bashrc if it exists
if [ -f "$HOME/.bashrc" ]; then
  . "$HOME/.bashrc"
fi
