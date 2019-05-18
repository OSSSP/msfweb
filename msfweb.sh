apt-get --allow-unauthenticated --yes update 
apt-get --allow-unauthenticated --yes upgrade -y
apt-get --allow-unauthenticated --yes install golang git build-essential patch ruby ruby-dev libsqlite3-dev -y 
apt-get --allow-unauthenticated --yes install libpcap-dev libpq-dev zlib1g-dev libz-dev liblzma-dev -y
gem install bundler -v 1.16.1
cd ~ && git clone https://github.com/rapid7/metasploit-framework.git
cd  /home/$USER/metasploit-framework && bundle install
go get github.com/yudai/gotty
mkdir ~/loot
cd ~/loot
~/go/bin/gotty --title-format Metasploit -w /usr/bin/ruby /home/$USER/metasploit-framework/msfconsole
