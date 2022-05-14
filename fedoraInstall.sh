sudo dnf upgrade -y
# curl da installare nel primo link
sudo dnf install git tlp tlp-rdw snapd -y
sudo dnf remove power-profiles-daemon -y
sudo systemctl enable tlp.service
sudo systemctl mask systemd-rfkill.service systemd-rfkill.socket
sudo ln -s /var/lib/snapd/snap /snap
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo snap install hello-world
sudo snap install spotify discord
sudo flatpak install flathub org.telegram.desktop
mkdir temp
cd temp
sudo curl https://packages.microsoft.com/yumrepos/edge/microsoft-edge-stable-101.0.1210.47-1.x86_64.rpm -o edge.rpm
sudo curl https://az764295.vo.msecnd.net/stable/da15b6fd3ef856477bf6f4fb29ba1b7af717770d/code-1.67.1-1651841920.el7.x86_64.rpm -o vscode.rpm
sudo dnf install vscode.rpm
sudo dnf install edge.rpm
cd
sudo rm -rf temp
sudo rm libreoffice*
sudo snap install android-studio --classic
sudo snap install flutter --classic