sudo apt-get update

# Install docker prerequisites
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
# Set up docker package repository
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
# Install docker-ce
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io

# Install docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Git stuff
git config --global user.email "flegelleicht@gmail.com"
git config --global user.name "Erik Hebisch"

# Setup environment
# Strg+B:source-file ~/.tmux.conf
# $ tmux source-file ~/.tmux.conf
cat > /home/vagrant/.tmux.conf <<EOF
bind -n M-Left select-pane -L
bind -n M-Right select-pane -R
bind -n M-Up select-pane -U
bind -n M-Down select-pane -D

bind -n S-M-Down resize-pane -D
bind -n S-M-Up resize-pane -U
bind -n S-M-Left resize-pane -L
bind -n S-M-Right resize-pane -R
EOF

cat >> /home/vagrant/.vimrc << EOF
color desert
EOF

cat >> /home/vagrant/.gemrc << EOF
gem: --no-document
EOF
