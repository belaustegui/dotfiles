# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/Bin" ] ; then
  PATH="$HOME/Bin:$PATH"
fi

# add composer packages to PATH
if [ -d "$HOME/.config/composer" ]; then
  PATH="$HOME/.config/composer/vendor/bin:$PATH"
fi

# add heroku toolbelt to PATH
if [ -d "/usr/local/heroku" ]; then
  PATH="/usr/local/heroku/bin:$PATH"
fi

# include .bashrc if it exists
if [ -f "$HOME/.bashrc" ]; then
  . "$HOME/.bashrc"
fi

# Include Ubuntu Make if it is installed
if [ -d "$HOME/.local/share/umake" ]; then
  PATH="$HOME/.local/share/umake/bin:$PATH"
fi
