sudo apt-get --allow-unauthenticated --yes install software-properties-common
sudo -H add-apt-repository ppa:gophers/archive
sudo add-apt-repository ppa:jonathonf/golang-libs-1.8
sudo -H apt-get --allow-unauthenticated --yes update 
sudo -H apt-get --allow-unauthenticated --yes upgrade -y
sudo -H apt-get --allow-unauthenticated --yes install golang-1.8 git build-essential patch ruby ruby-dev libsqlite3-dev -y 
sudo -H apt-get --allow-unauthenticated --yes install libpcap-dev libpq-dev zlib1g-dev libz-dev liblzma-dev -y
sudo -H gem install bundler -v 1.16.1
cd ~ && git clone https://github.com/rapid7/metasploit-framework.git
cd  /home/$USER/metasploit-framework && bundle install
export PATH=$PATH:/usr/lib/go-1.8/bin
go get github.com/yudai/gotty
mkdir ~/loot
cd ~/loot
~/go/bin/gotty --title-format Metasploit -w /usr/bin/ruby /home/$USER/metasploit-framework/msfconsole
