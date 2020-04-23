# Utilities
sudo apt install -y \
  stow zsh awscli vim code imagemagick gnome-tweaks flameshot google-chrome-stable \
  flatpak docker.io docker-compose

# Set ZSH as default shell
chsh -s /usr/bin/zsh
# Allow using Docker
sudo gpasswd -a crbelaus docker

# Development dependencies
sudo apt install -y \
  automake autoconf libreadline-dev libncurses-dev libssl-dev libyaml-dev \
  libxslt1-dev libffi-dev libtool unixodbc-dev libwxgtk3.0-gtk3-dev \
  libgl1-mesa-dev libglu1-mesa-dev libpng-dev inotify-tools

# Setup flathub.org for flatpaks
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Install Flatpak utilities
flatpak install -y flathub \
  com.bitwarden.desktop \
  com.calibre_ebook.calibre \
  com.github.alainm23.planner \
  com.slack.Slack \
  com.spotify.Client \
  com.uploadedlobster.peek \
  de.haeckerfelix.Fragments \
  io.dbeaver.DBeaverCommunity \
  org.gimp.GIMP \
  org.gnome.Boxes \
  org.telegram.desktop \
  org.videolan.VLC


# Set up ASDF Version Manager from asdf-vm.com
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.7.8
echo -e '\n. $HOME/.asdf/asdf.sh' >> ~/.bashrc
echo -e '\n. $HOME/.asdf/completions/asdf.bash' >> ~/.bashrc
# Add language plugins
asdf plugin-add nodejs && asdf plugin-add erlang && asdf plugin-add elixir
# Import NodeJS release keys (https://github.com/asdf-vm/asdf-nodejs)
bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring
