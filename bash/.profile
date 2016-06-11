# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# if running bash
if [ -n "$BASH_VERSION" ]; then
  # include .bashrc if it exists
  if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
  fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
  PATH="$HOME/bin:$PATH"
fi

# add composer to PATH
if [ -d "~/.composer" ]; then
  PATH="$HOME/.composer/vendor/bin:$PATH" # Composer dependencies
fi

# add heroku toolbelt to PATH
if [ -d "/usr/local/heroku" ]; then
  PATH="/usr/local/heroku/bin:$PATH"
fi

# Ubuntu make installation of Ubuntu Make binary symlink
if [ -d "$HOME/.local/share/umake/bin" ]; then
  PATH="$HOME/.local/share/umake/bin:$PATH"
fi

