# !/bin/sh

mkdir -v ~/.config/{pulse,lsd,fish,darktable};
mkdir ~/Google\ Drive;
mkdir -p ~/Projects/me;

sudo pacman -Syu;

# check alternatives
# =====
# git-extras
# darktable
# docker-ce
# docker-ce-cli
# libreswan
# ttf-mscorefonts-installer

sudo pacman -S --noconfirm curl \
alacritty \
bat \
cheese \
cmake \
cmatrix \
darktable \
deno \
docker \
docker-compose \
filezilla \
fish \
flameshot \
geary \
git \
gnome-font-viewer \
go \
gpick \
gst-plugin-pipewire \
htop \
inkscape \
jq \
kdenlive \
konsole \
lsd \
manjaro-pipewire \
mplayer \
net-tools \
nodejs \
npm \
optipng \
pulseeffects \
python-pip \
rhythmbox \
simplescreenrecorder \
solaar \
speedtest-cli \
tmux \
vim \
vlc \
xclip \
xsel \
yarn;

yay -S --noconfirm ulauncher;
yay -S --noconfirm hyper;
yay -S --noconfirm espanso;
yay -S --noconfirm figma-linux;
yay -S --noconfirm google-chrome;
yay -S --noconfirm heroku;
yay -S --noconfirm starship;
yay -S --noconfirm visual-studio-code-insiders-bin;

cp -rv fish/config.fish ~/.config/fish/;
cp -rv .gitconfig ~/;
cp -rv alacritty ~/.config/;
cp -rv darktable/styles ~/.config/darktable/styles/;
cp -rv pulse.conf ~/.config/pulse/daemon.conf;
cp -rv SimpleScreenRecorder/.ssr ~/;
cp -rv lsd/config.yaml ~/.config/lsd/;

# docker
sudo systemctl start docker.service;
sudo systemctl enable docker.service;
sudo chmod 666 /var/run/docker.sock;
sudo groupadd docker;
sudo usermod -aG docker $USER;
newgrp docker;
# ---

# tmux conf
cp -rv .tmux.conf ~/;
tmux source ~/.tmux.conf;

# change shell
chsh -s /usr/bin/fish;

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm;

# npm global packages
sudo npm i -g \
begynner \
easy-rename \
gtop \
localtunnel \
n \
npm-check-updates \
qrcode-terminal \
svgo \
vercel;

# pfetch
{
  mkdir ~/temp && cd ~/temp && \
  git clone https://github.com/dylanaraps/pfetch && \
  cd pfetch && \
  sudo cp -v pfetch /usr/bin && \
  cd ~ && rm -rf ~/temp;
}

# nerd fonts
{
  mkdir ~/temp && cd ~/temp && \
  git clone https://github.com/ryanoasis/nerd-fonts && \
  bash nerd-fonts/install.sh && \
  cd ~ && rm -rf ~/temp;
}
