## init.sh

##-- apt-get 업데이트, 업그레이드 --##
apt-get update
apt-get upgrade -y 

##-- git 설치 --##
apt-get install -y git

##-- vim 설치 --##
apt-get install -y vim 

##-- typora 설치 --##
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA300B7755AFCFAE
add-apt-repository 'deb https://typora.io ./linux/'
apt-get update
apt-get install -y typora

##-- virtual box 설치 --##
apt-get install -y virtualbox virtualbox-qt virtualbox-ext-pack virtualbox-dkms virtualbox-source

## -- cloud drive 설치 https://rclone.org 참고하여 설정 -- ##
curl https://rclone.org/install.sh | bash

##-- 자바 설치 --##
add-apt-repository ppa:webupd8team/java
apt-get update
apt install -y oracle-java8-installer
javac -version
readlink -f `which javac`
sh -c 'echo "export JAVA_HOME=/usr/lib/jvm/java-8-oracle" >> /etc/profile'

##-- c 설치 --##
apt-get install build-essential

##-- webstorm --##
wget https://download.jetbrains.com/webstorm/WebStorm-2017.3.5.tar.gz
sudo -u $1 tar -xzfv WebStorm-2017.3.5.tar.gz
mv ./WebStorm-2017-3.5 /opt/
sudo -u $1 /opt/WebStorm-2017.3.5/bin/webstorm.sh

##-- vscode --##
wget https://go.microsoft.com/fwlink/?LinkID=760868 -O vscode.deb
dpkg -i vscode.deb
apt-get install -y -f

##-- 이클립스 설치 --##
wget http://ftp.jaist.ac.jp/pub/eclipse/oomph/epp/oxygen/R2/eclipse-inst-linux64.tar.gz
tar -zxvf eclipse-inst-linux64.tar.gz
chown -R $1:$1 ./eclipse-installer

##-- 원격을 위한 팀뷰어 설치 --##
wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
dpkg teamviewer_amd64.deb
apt-get install -y -f
