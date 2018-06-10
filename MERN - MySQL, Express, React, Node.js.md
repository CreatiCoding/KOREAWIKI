# MERN - MySQL, Express, React, Node.js

### 0. 개요

client side: create-react-app

server side: express

database: mysql



### 1. 환경 구축

1) Node, npm 설치

2) React Redux Route 설치

3) MySQL 설치

```
wget -O - https://raw.githubusercontent.com/CreatiCoding/CreatiScript/master/installNode10.sh | bash
wget -O - https://raw.githubusercontent.com/CreatiCoding/CreatiScript/master/installReact.sh | bash
wget -O - https://raw.githubusercontent.com/CreatiCoding/CreatiScript/master/installMysql.sh | bash
```

### **2. DB 구축**

aquerytool.com 에서 생성한 create.sql 파일로 생성

```bash
mysql -uroot -p portfolio < create.sql
```

### 3. 프로젝트 생성

#### 1) 프로젝트 생성 툴 설치

```bash
npm install -g yarn
yarn global add create-react-app
yarn global add express-generator
yarn global add nodemon
yarn global add concurrently
# 에러 발생시 global node_modules 초기화
```

#### 2) create-react-app, express-generator 실행

```bash
create-react-app portfolio
express --view=ejs portfolio
```

#### 3) package.json 합치기

```json
{
  "name": "portfolio",
  "version": "0.0.0",
  "private": true,
  "scripts": {
    "start": "concurrently --kill-others-on-fail \"yarn server\" \"yarn client\"",
    "server": "PORT=3001 nodemon ./bin/www",
    "client": "react-scripts start",
    "build": "react-scripts build",
    "test": "react-scripts test --env=jsdom",
    "eject": "react-scripts eject"
  },
  "dependencies": {
    "react": "^16.4.0",
    "react-dom": "^16.4.0",
    "react-scripts": "1.1.4",
    "cookie-parser": "~1.4.3",
    "debug": "~2.6.9",
    "ejs": "~2.5.7",
    "express": "~4.16.0",
    "http-errors": "~1.6.2",
    "morgan": "~1.9.0"
  },
  "proxy": "http://localhost:3000/",
  "homepage": "/portfolio"
}
```

#### 4) 필요한 기본 라이브러리 설치

```bash
yarn add express-session mysql body-parser
```



