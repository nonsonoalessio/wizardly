sudo dnf upgrade -y
sudo dnf install gh git tlp tlp-rdw snapd zsh python3-pip java-latest-openjdk.x86_64 java-11-openjdk.x86_64 -y
sudo pip install virtualenv
curl http://courses.missouristate.edu/kenvollmar/mars/MARS_4_5_Aug2014/Mars4_5.jar -o Mars4_5.jar
sudo dnf remove power-profiles-daemon -y
sudo systemctl enable tlp.service
sudo systemctl mask systemd-rfkill.service systemd-rfkill.socket
sudo ln -s /var/lib/snapd/snap /snap
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo snap install hello-world
sudo flatpak install flathub org.telegram.desktop -y
sudo snap install spotify
mkdir temp
cd temp
sudo curl https://packages.microsoft.com/yumrepos/edge/microsoft-edge-stable-101.0.1210.47-1.x86_64.rpm -o edge.rpm
sudo curl https://az764295.vo.msecnd.net/stable/da15b6fd3ef856477bf6f4fb29ba1b7af717770d/code-1.67.1-1651841920.el7.x86_64.rpm -o vscode.rpm
sudo curl https://download.onlyoffice.com/install/desktop/editors/linux/onlyoffice-desktopeditors.x86_64.rpm -o onlyoffice.rpm
sudo dnf install vscode.rpm -y
sudo dnf install edge.rpm -y
sudo dnf install onlyoffice.rpm -y
cd ..
sudo rm -rf temp
sudo dnf remove libreoffice* -y
sudo snap install android-studio --classic
sudo snap install flutter --classic
curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh | sudo bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
sudo rm .zshrc
curl https://raw.githubusercontent.com/nonsonoalessio/wizardly/master/res/.zshrc -o .zshrc
curl https://raw.githubusercontent.com/nonsonoalessio/wizardly/master/res/.p10k.zsh -o .p10k.zsh