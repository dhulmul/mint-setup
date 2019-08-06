#Install git and other essential packages
sudo apt-get install linux-headers-generic build-essential git
#Install wifi driver
git clone https://github.com/smlinux/rtl8723de.git -b 4.15-up
dkms add ./rtl8723de
dkms install rtl8723de/5.1.1.8_21285.20171026_COEX20170111-1414
depmod -a
#reboot
# Install snap 
sudo apt install snapd
# Instal VS Code
sudo snap install --classic code
# Instal Terminology
sudo apt-get install terminology
# Install dconf editor
sudo apt-get install dconf-editor
#Install zsh
sudo apt install zsh
#Install ohmyzsh specific packages
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
curl -L git.io/antigen > antigen.zsh
#Setup docker
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   bionic stable"
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
#Generate ssh key
ssh-keygen -t rsa -C "rishabhbaid1@gmail.com"
#Install pip and pipenv
sudo apt install python3-pip
pip install --user pipenv
#Install Mongo
wget -qO - https://www.mongodb.org/static/pgp/server-4.0.asc | sudo apt-key add -
echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.0.list
sudo apt-get update
sudo apt-get install -y mongodb-org
#Install Android Studio
sudo snap install android-studio --classic
#Install slack
sudo snap install slack --classic

