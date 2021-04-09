# !/bin/sh

# tools for linux
sudo apt update && sudo apt install \
audacity \
ca-certificates \
cheese \
curl \
filezilla \
firefox-trunk \
fish \
flameshot \
fonts-firacode \
fonts-noto-color-emoji \
gconf-editor \
gimp \
git \
gnome-terminal \
gnupg \
gpick \
imagemagick \
imwheel \
inkscape \
kdenlive \
mono-devel \
mplayer \
pbcopy \
rar \
rhythmbox \
screenruler \
simplescreenrecorder \
ttf-mscorefonts-installer \
ulauncher \
unetbootin \
vim \
vlc \
wine \
xclip \
xscreensaver \
xscreensaver-data-extra \
xscreensaver-gl-extra;

# nodejs: current (2021) 15.x
curl -sL https://deb.nodesource.com/setup_15.x | sudo -E bash - && sudo apt install -y nodejs && \
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p

# global npm packages
sudo npm i -g -d \
begynner \
easy-rename \
gtop \
n \
svgo;

# vscode
{
	mkdir ~/temp && cd ~/temp && \
	wget "https://code.visualstudio.com/sha/download?build=insider&os=linux-deb-x64" -O code.deb && sudo dpkg -i code.deb && \
	cd ../ && rm -rf ~/temp;
} || {
	sudo apt --fix-broken install && rm -rf ~/temp;
}

# google chrome
{
	mkdir ~/temp && cd ~/temp && \
	wget "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb" -O chrome.deb && sudo dpkg -i chrome.deb && \
	cd ../ && rm -rf ~/temp;
} || {
	sudo apt --fix-broken install && rm -rf ~/temp;
}

# virtualbox
{
	mkdir ~/temp && cd ~/temp && \
	wget "https://download.virtualbox.org/virtualbox/6.1.18/virtualbox-6.1_6.1.18-142142~Ubuntu~eoan_amd64.deb" -O vbox.deb && sudo dpkg -i vbox.deb && \
	cd ../ && rm -rf ~/temp;
} || {
	sudo apt --fix-broken install && rm -rf ~/temp;
}
