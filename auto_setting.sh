#!/bin/sh
DELAY=2

### auto update first ###
echo "### auto update first ###"
sudo apt-get update
sleep $DELAY

### install curl
sudo apt-get install -y curl
sleep $DELAY

### install vim edito r###
echo "### install vim edito r###"
sudo apt-get install -y vim
sleep $DELAY

### install minicom ###
echo "### install minicom ###"
sudo apt-get install -y minicom
sleep $DELAY
# change user mode for minicom"
sudo usermod -a -G dialout $USER

### install sshpass ###
echo "### install sshpass ###"
sudo apt-get install -y sshpass
sleep $DELAY 

### install git ###
echo "### install git ###"
sudo apt-get install -y git
sleep $DELAY

### install and config tmux ###
echo "### install and config tmux ###"
sudo apt-get install -y tmux
sleep $DELAY

### install net-tools
sudo apt install -y net-tools
sleep $DELAY

### install tree
sudo apt install -y tree
sleep $DELAY

### install slack on ubuntu
sudo snap install slack --classic
sleep $DELAY

### install ibus (unikey) on ubuntu
sudo apt-get install -y ibus-unikey
sleep $DELAY

sudo add-apt-repository ppa:ubuntu-vn/ppa
sleep $DELAY

ibus retstart
sleep $DELAY

### install and config docker from Official Docker Repository
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
apt-cache policy docker-ce
sudo apt install -y docker-ce
sleep $DELAY

sudo systemctl status docker

### to avoid typing sudo whenever you run the docker command, add your username to the docker group
sudo usermod -aG docker ${USER}

### To apply the new group membership, log out of the server and back in, or type the following
su - ${USER}

### Confirm that your user is now added to the docker group by typing:
groups

### copy file .bashrc  and .vimrc
cp ./bashrc_sample "/home/$USER/.bashrc"
cp ./vimrc_sample "/home/$USER/.vimrc"

### install tools search ####
echo "### install tools search ####"
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

### install ctags (tagslist)
sudo apt-get install exuberant-ctags

### sync environment ###
echo "### sync environment ###"
source ~/.bashrc

