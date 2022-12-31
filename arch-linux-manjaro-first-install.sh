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
cheese \
cmake \
cmatrix \
darktable \
filezilla \
fish \
flameshot \
git \
go \
konsole \
gpick \
htop \
inkscape \
jq \
kdenlive \
lsd \
mplayer \
net-tools \
nodejs \
npm \
optipng \
python-pip \
rhythmbox \
simplescreenrecorder \
solaar \
tmux \
vim \
vlc \
xclip \
yarn;

yay -S ulauncher \
espanso \
figma-linux \
google-chrome \
heroku \
starship;

cp -rv fish/config.fish ~/.config/fish/;
cp -rv .gitconfig ~/;
cp -rv alacritty ~/.config/;
cp -rv darktable/styles ~/.config/darktable/styles/;
cp -rv pulse.conf ~/.config/pulse/daemon.conf;
cp -rv SimpleScreenRecorder/.ssr ~/;
cp -rv lsd/config.yaml ~/.config/lsd/;

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