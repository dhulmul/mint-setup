#Install git and other essential packages
sudo apt-get install linux-headers-generic build-essential git
#Install wifi driver
git clone https://github.com/smlinux/rtl8723de.git -b 4.11-up
sudo dkms add ./rtl8723de
sudo dkms install rtl8723de/5.1.1.8_21285.20171026_COEX20170111-1414
sudo depmod -a
#reboot
# Install snap 
sudo apt install snapd
# Instal VS Code
sudo snap install --classic code
# Instal Terminology
sudo apt-get install terminology
# Install dconf editor
sudo apt-get install dconf-editor
