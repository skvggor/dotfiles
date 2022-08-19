# !/bin/sh

# :( i know about -p

mkdir ~/.config;
mkdir ~/.config/pulse;
mkdir ~/.config/lsd;
mkdir ~/.config/fish;
mkdir ~/.config/darktable;

mkdir ~/Google\ Drive;

mkdir ~/Projects;
mkdir ~/Projects/me;
mkdir ~/Projects/viptelecom;

sudo apt update -y && sudo apt install curl fish git tmux;

# docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg;
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
$(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null;
# ---

sudo add-apt-repository ppa:agornostal/ulauncher;
sudo add-apt-repository ppa:gezakovacs/ppa; # unetbootin

# apt packages
sudo apt update -y && sudo apt install -y \
apt-transport-https \
audacity \
ca-certificates \
ca-certificates \
cheese \
chrome-gnome-shell \
cmatrix \
containerd.io \
darktable \
docker-ce \
docker-ce-cli \
flameshot \
fonts-firacode \
fonts-noto-color-emoji \
gconf-editor \
gimp \
gnome-terminal \
gnome-tweaks \
gnupg \
gpick \
imagemagick \
imwheel \
inkscape \
jq \
kdenlive \
libreswan \
lsb-release \
mono-devel \
mplayer \
mysql-workbench \
net-tools \
git-extras \
golang \
ubuntu-restricted-extras \
network-manager-l2tp \
network-manager-l2tp-gnome \
python3-pip \
rar \
rhythmbox \
screenruler \
simplescreenrecorder \
snapd \
solaar \
tmux \
ttf-mscorefonts-installer \
ulauncher \
unetbootin \
vim \
vlc \
xclip;

# wine \
# xscreensaver \
# xscreensaver-data-extra \
# xscreensaver-gl-extra;

# docker
sudo chmod 666 /var/run/docker.sock;
sudo groupadd docker;
sudo usermod -aG docker $USER;
# newgrp docker
# ---

# docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose;
sudo chmod +x /usr/local/bin/docker-compose;

# snap packages
sudo snap install heroku --classic;
sudo snap install alacritty --classic;
sudo snap install htop --classic;
sudo snap install cmake --classic;

# cp -rv fish/fish_history ~/.local/share/fish/; // https://drive.google.com/file/d/1SviusRFELzNDuL9Ne6M5RcsU5j9_Pp79/view?usp=sharing

cp -rv fish/config.fish ~/.config/fish/;
cp -rv .gitconfig ~/;
cp -rv alacritty ~/.config/;
cp -rv darktable/styles/* ~/.config/darktable/styles/;
cp -rv pulse.conf ~/.config/pulse/daemon.conf;
cp -rv SimpleScreenRecorder/.ssr ~/;
cp -rv lsd/config.yaml ~/.config/lsd/;

cp -rv .tmux.conf ~/;
tmux source ~/.tmux.conf;

chsh -s /usr/bin/fish;

curl git.io/pure-fish --output /tmp/pure_installer.fish --location --silent;
source /tmp/pure_installer.fish; and install_pure;

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm;

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
qrcode-terminal \
svgo \
vercel;

# nerd fonts
{
  mkdir ~/temp && cd ~/temp && \
  git clone https://github.com/ryanoasis/nerd-fonts && \
	bash nerd-fonts/install.sh && \
  cd ../ && rm -rf ~/temp;
}

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
	wget "https://download.virtualbox.org/virtualbox/6.1.34/virtualbox-6.1_6.1.34-150636.1~Ubuntu~eoan_amd64.deb" -O vbox.deb && sudo dpkg -i vbox.deb && \
	cd ../ && rm -rf ~/temp;
} || {
	sudo apt --fix-broken install && rm -rf ~/temp;
}
