# Mysql 재설치

※주의

백업은 제외하였습니다. 싹 지우고 재설치만 명시했습니다. 필요시 업데이트 하겠습니다.

### 1. Mysql 지우기

```bash
sudo apt-get purge mysql-server mysql-common mysql-client
sudo rm -rf /var/lib/mysql /etc/mysql/ /var/log/mysql*
```

### 2. Mysql 재설치 

```bash
sudo apt-get install mysql-client mysql-server mysql-common
```



출처 : [HowTo: Reinstall MySQL v5.x On Linux](https://www.cyberciti.biz/faq/linux-completely-reinstall-mysql-server/)



p.s. 쓰고보니 간단하네..