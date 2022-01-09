# !/bin/sh

mkdir ~/Google\ Drive;

sudo add-apt-repository ppa:agornostal/ulauncher;
sudo add-apt-repository ppa:gezakovacs/ppa;

# apt packages
sudo apt update && sudo apt install -y \
alacritty \
audacity \
ca-certificates \
cheese \
chrome-gnome-shell \
containerd.io \
curl \
darktable \
docker-ce \
docker-ce-cli;
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
jq \
kdenlive \
lsb-release \
mono-devel \
mplayer \
python3-pip \
rar \
rhythmbox \
screenruler \
simplescreenrecorder \
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
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg;
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
$(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null;
sudo chmod 666 /var/run/docker.sock
# ---

# docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# snap packages
sudo snap install heroku terminology htop cmake --classic;

# tools for linux
cp -rv fish/config.fish ~/.config/fish/;
# cp -rv fish/fish_history ~/.local/share/fish/; // https://drive.google.com/file/d/1SviusRFELzNDuL9Ne6M5RcsU5j9_Pp79/view?usp=sharing

cp -rv .gitconfig ~/;

cp -rv alacritty ~/.config/;

cp -rv darktable/styles ~/.config/darktable;

cp -rv pulse.conf ~/.config/pulse/daemon.conf;

cp -rv SimpleScreenRecorder/.ssr ~/;

cp -rv lsd/config.yaml ~/.config/lsd/;

cp -rv .tmux.conf ~/;
tmux source ~/.tmux.conf;

curl git.io/pure-fish --output /tmp/pure_installer.fish --location --silent;
source /tmp/pure_installer.fish; and install_pure;

git clone https://github.com/ryanoasis/nerd-fonts ~/Downloads/nerd-fonts;
sudo bash ~/Downloads/nerd-fonts/install.sh;

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm;

# sudo cp -rv sources.list.d/* /etc/apt/sources.list.d;
# sudo cp -rv fonts/opentype/* /usr/share/fonts/opentype;
# sudo cp -rv fonts/truetype/* /usr/share/fonts/truetype;

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
  sudo bash nerd-fonts/install.sh && \
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
	wget "https://download.virtualbox.org/virtualbox/6.1.30/virtualbox-6.1_6.1.30-148432~Ubuntu~eoan_amd64.deb" -O vbox.deb && sudo dpkg -i vbox.deb && \
	cd ../ && rm -rf ~/temp;
} || {
	sudo apt --fix-broken install && rm -rf ~/temp;
}
