# **민트 운영체제의 초기 설정**

## 0. 개요

​	민트 운영체제를 개발용 데스크탑으로 사용하기 위한 초기 설정을 작업하는 과정을 정리한 문서입니다.

## 1. 초기 설정 목록

- apt-get 업데이트

- git 설치

- vim 설치

- typora 설치

- virtual box 설치 for Windows 10 32bit and Kakaotalk

- rclone을 사용하여 onedrive, dropbox, google drive를 mount하여 사용

- 자바와 C언어 설치

- 개발툴 : webstorm, vscode, eclipse

  ​

## 2. 스크립트 내용

`sudo ./init.sh {사용자}`

```bash
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
```



## 3. 후작업

#### 1) 머신->설정->시스템->가속->default를 KVM으로 바꾸고 확인을 눌러 저장

#### 2) 자바 위치 확인

`echo $JAVA_HOME`

#### 3) rclone 드라이브 연결 

https://rclone.org/docs/ 를 참고

- rclone config
- `mkdir /media/{사용} && rclone mount --allow-other {사용}:/ /media/{사용}/`
- ex) `mkdir /media/dropbox && rclone mount --allow-other dropbox:/ /media/dropbox`
- 마운트 해제시 오류 발생시 `fusermount -uz /media/dropbox`
- 프로세스 종료 방법 : `kill $(ps aux | grep 'rclone'| awk '{print $2}')`

#### 4) 이클립스 설치 작업

/home/사용자/eclipse-installer 에 있는 eclipse-inst를 더블클릭하여 실행

설치 진행 후 아래와 같이 경로 수정

`sudo mv /home/{사용자}/eclipse/java-oxygen/* /opt/`

경로 수정 후 아래와 같은 파일 바탕화면에 "eclipse.desktop"으로 생성

```bash
## eclipse.desktop

[Desktop Entry]
Encoding=UTF-8
Name=Eclipse
Comment=Eclipse IDE
Exec=/opt/eclipse/eclipse
Icon=/opt/eclipse/icon.xpm
Terminal=false
Type=Application
Categories=Development
StartupNotif=true
```

우클릭->속성->권한->실행 권한 주기

#### 5) 팀뷰어

원격 작업을 위한 팀뷰어 작업 진행

- 접속 후 로그인
- 옵션 -> 일반 -> 시스템과 함께 TeamViewer를 시작
- 옵션 -> 일반 -> 계정 할당
- 옵션 -> 보안 -> 개인 비밀번호 설정, 빠른 연결 허용 체크



## 4. Q/A

https://github.com/CreatiCoding/KOREAWIKI/issues

이슈를 남겨주세요.

