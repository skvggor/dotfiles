# !/bin/sh

# tools for linux
sudo apt update && sudo apt install \
ca-certificates \
cheese \
curl \
fish \
flameshot \
fonts-noto-color-emoji \
gimp \
git \
gnome-terminal \
gnupg \
gpick \
inkscape \
mono-devel \
mplayer \
screenruler \
simplescreenrecorder \
ttf-mscorefonts-installer \
vim \
xclip \
# xfce4-power-manager \
xscreensaver \
xscreensaver-data-extra \
xscreensaver-gl-extra;

# nodejs: current (2019) 12.x
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash - && sudo apt install -y nodejs && \
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p

# global npm packages
sudo npm i -g -d \
begynner \
# bower \
easy-rename \
gtop \
# gulp \
# gulp-cli \
n \
# ngrok \
npx \
svgo;
# yarn;

# vscode
{
	mkdir ~/temp && cd ~/temp && \
	wget "https://go.microsoft.com/fwlink/?LinkID=760868" -O code.deb && sudo dpkg -i code.deb && \
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

# # virtualbox
# {
# 	mkdir ~/temp && cd ~/temp && \
# 	wget "https://download.virtualbox.org/virtualbox/6.0.12/virtualbox-6.0_6.0.12-133076~Ubuntu~bionic_amd64.deb" -O vbox.deb && sudo dpkg -i vbox.deb && \
# 	cd ../ && rm -rf ~/temp;
# } || {
# 	sudo apt --fix-broken install && rm -rf ~/temp;
# }
