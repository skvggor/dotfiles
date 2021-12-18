# !/bin/sh

mkdir ~/Google\ Drive;

sudo add-apt-repository ppa:agornostal/ulauncher;

sudo apt update && sudo apt install \
alacritty \
audacity \
ca-certificates \
cheese \
curl \
darktable \
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
tmux \
ttf-mscorefonts-installer \
ulauncher \
vim \
vlc \
xclip;

# wine \
# unetbootin \
# xscreensaver \
# xscreensaver-data-extra \
# xscreensaver-gl-extra;

sudo snap install heroku terminology --classic;
sudo snap htop;

# tools for linux
cp -rv fish/config.fish ~/.config/fish/config.fish;

cp -rv .gitconfig ~/.gitconfig;

cp -rv alacritty ~/.config/alacritty;

cp -rv pulse.conf ~/.config/pulse/daemon.conf;

cp -rv .tmux.conf ~/.tmux.conf;
tmux source ~/.tmux.conf;

curl git.io/pure-fish --output /tmp/pure_installer.fish --location --silent;
source /tmp/pure_installer.fish; and install_pure;

# sudo cp -rv sources.list.d/* /etc/apt/sources.list.d;

# sudo cp -rv fonts/opentype/* /usr/share/fonts/opentype;
# sudo cp -rv fonts/truetype/* /usr/share/fonts/truetype;

sudo cp -rv SimpleScreenRecorder/.ssr/* ~/.ssr;

curl https://rclone.org/install.sh | sudo bash;

# nodejs
curl -sL https://deb.nodesource.com/setup_17.x | sudo -E bash - && sudo apt install -y nodejs && \
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p

# global npm packages
sudo npm i -g -d \
begynner \
easy-rename \
gtop \
localtunnel \
n \
npm-check-updates \
svgo \
vercel;

# microsoft edge
{
	mkdir ~/temp && cd ~/temp && \
	wget "https://go.microsoft.com/fwlink?linkid=2149051" -O edge.deb && sudo dpkg -i edge.deb && \
	cd ../ && rm -rf ~/temp;
} || {
	sudo apt --fix-broken install && rm -rf ~/temp;
}

# iriun webcam
{
	mkdir ~/temp && cd ~/temp && \
	wget "https://iriun.gitlab.io/iriunwebcam-2.6.deb" -O iriun.deb && sudo dpkg -i iriun.deb && \
	cd ../ && rm -rf ~/temp;
} || {
	sudo apt --fix-broken install && rm -rf ~/temp;
}

# postman
{
	mkdir ~/temp && cd ~/temp && \
	wget "https://dl.pstmn.io/download/latest/linux64" -O postman.tar.gz && tar xzvf postman.tar.gz && \
	sudo mv -v Postman /bin/ && \
	cd ../ && rm -rf ~/temp;
}

# lsd (improved ls command)
{
	mkdir ~/temp && cd ~/temp && \
	wget "https://github.com/Peltoche/lsd/releases/download/0.20.1/lsd-musl_0.20.1_amd64.deb" -O lsd.deb && sudo dpkg -i lsd.deb && \
	cd ../ && rm -rf ~/temp;
} || {
	sudo apt --fix-broken install && rm -rf ~/temp;
}

# Gens/GS
{
	sudo dpkg --add-architecture i386;
	mkdir ~/temp && cd ~/temp && \
	wget "https://retrocdn.net/images/e/e9/Gens_2.16.8-r7orig_amd64.deb" -O gen-gs.deb && sudo dpkg -i gens.deb && \
	cd ../ && rm -rf ~/temp;
} || {
	sudo apt --fix-broken install && rm -rf ~/temp;
}

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
	wget "https://download.virtualbox.org/virtualbox/6.1.30/virtualbox-6.1_6.1.30-148432~Ubuntu~eoan_amd64.deb" -O vbox.deb && sudo dpkg -i vbox.deb && \
	cd ../ && rm -rf ~/temp;
} || {
	sudo apt --fix-broken install && rm -rf ~/temp;
}
