sudo apt -y update 
sudo snap remove firefox
sudo add-apt-repository ppa:mozillateam/ppa
echo '
Package: *
Pin: release o=LP-PPA-mozillateam
Pin-Priority: 1001
' | sudo tee /etc/apt/preferences.d/mozilla-firefox

echo 'Unattended-Upgrade::Allowed-Origins:: 
"LP-PPA-mozillateam:${distro_codename}";' | 
sudo tee /etc/apt/apt.conf.d/51unattended-
upgrades-firefox

sudo apt -y install firefox
sudo apt -y install git zsh python3-pip flatpak
sudo pip install virtualenv

sudo add-apt-repository ppa:linrunner/tlp
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null

sudo apt -y update
sudo apt -y install tlp tlp-rdw gh

sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo snap install spotify
sudo snap install android-studio --classic
sudo snap install flutter --classic

mkdir temp
cd temp
sudo curl https://az764295.vo.msecnd.net/stable/da15b6fd3ef856477bf6f4fb29ba1b7af717770d/code_1.67.1-1651841865_amd64.deb -o vscode.deb
sudo curl https://packages.microsoft.com/repos/edge/pool/main/m/microsoft-edge-stable/microsoft-edge-stable_101.0.1210.47-1_amd64.deb -o edge.deb
sudo curl https://download.onlyoffice.com/install/desktop/editors/linux/onlyoffice-desktopeditors_amd64.deb -o onlyoffice.deb

sudo apt -y -f install '$HOME/temp/edge.deb'
sudo apt -y -f install '$HOME/temp/vscode.deb'
sudo apt -y -f install '$HOME/temp/onlyoffice.deb'
cd ..
sudo rm -rf temp

curl http://courses.missouristate.edu/kenvollmar/mars/MARS_4_5_Aug2014/Mars4_5.jar -o Mars4_5.jar
curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh | sudo bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
sudo rm .zshrc
curl https://raw.githubusercontent.com/nonsonoalessio/wizardly/master/res/.zshrc -o .zshrc
curl https://raw.githubusercontent.com/nonsonoalessio/wizardly/master/res/.p10k.zsh -o .p10k.zsh