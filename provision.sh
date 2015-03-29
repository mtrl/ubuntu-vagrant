echo "Provisioning"
sudo apt-get update
sudo apt-get install -y zsh curl wget git git-flow vim

# install chef
wget https://www.opscode.com/chef/install.sh
sudo bash install.sh
rm install.sh
# chef cookbooks
wget http://github.com/opscode/chef-repo/tarball/master
tar -zxf master
mv chef-chef-repo-605eeda chef-repo
rm master

# z shell
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
.oh-my-zsh/templates/zshrc.zsh-template .zshrc
#chsh -s /bin/zsh
