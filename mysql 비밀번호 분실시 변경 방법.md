# mysql 비밀번호 분실시 변경 방법

### 1. 환경

| 항목       | 내용   |
| ---------- | ------ |
| 운영체제   | 우분투 |
| mysql 버전 | 5.7    |

### 2. 개요

 이미 사용중인 mysql 에서 비밀번호를 잃어버렸을 경우 초기화 및 변경하는 방법

### 3. 방법

#### 1) mysql 종료

```bash
sudo service mysql stop
```

#### 2) /etc/mysql/mysql.conf.d/mysqld.cnf 마지막줄 추가

```bash
skip-grant-tables
```

#### 3) mysql 시작

```bash
sudo service mysql start
```

#### 4) mysql 접속

```bash
mysql -uroot
```

#### 5) mysql 비밀번호 변경

둘중 아무 방법으로 시도 가능

```bash
>> update user set authentication_string=PASSWORD('비밀번호') where user = 'root';
>> ALTER USER 'root'@'localhost' IDENTIFIED BY '비밀번호';
```

자세한 내용: https://dev.mysql.com/doc/refman/8.0/en/resetting-permissions.html
