# nginx 튜토리얼

### 0. 개요

 nginx를 활용하여 여러 node app을 하나의 도메인으로 운영할 수 있는 reverse proxy를 사용하는 튜토리얼입니다. https에 대한 일은 모두 AWS의 ELB에 떠넘겼고 nginx는 오직 reverse proxy를 통해 url로 여러 node app을 실행할 수 있는 환경을 구축하는 작업입니다.

### 1. 설치

```bash
sudo apt-get install nginx
```

### 2. 설치 확인

```bash
sudo find / -name nginx.conf
```

### 3. 기본 설정 파일 백업

```bash
cd /etc/nginx/
sudo cp nginx.conf nginx.conf.bk
```

### 4. sudo vim /etc/nginx/nginx.conf

##### 참고: https://nginx.org/en/docs/beginners_guide.html

```bash
# nginx.conf
user www-data;	  # worker processes에서 사용되는 사용자 정의
worker_processes auto;  # worker processes의 갯수 설정
pid /run/nginx.pid;     # main process의 process ID를 저장할 파일을 정의합니다.
events{
	worker_connections 768; # 하나의 worker 가 동시에 처리할수 있는 접속수 지정
	multi_accept on;	# 한번에 복수의 접속 허용 여부
	use epoll;	      # linux 커널2.6이상일 경우, epoll, BSD 의 경우 kqueue 로 지정
}

http {
	sendfile on;
	tcp_nopush on;
	tcp_nodelay on;
	keepalive_timeout 65;
	types_hash_max_size 2048;

	include /etc/nginx/mime.types;
	default_type application/octet-stream;

	access_log /var/log/nginx/access.log;
	error_log /var/log/nginx/error.log;

	gzip on;
	gzip_disable "msie6";
	server {
		listen 80;	      # 80포트에 대해서
		listen [::]:80;	 # 80포트에 대해서
		# https로 리다이렉트
		return 301 https://$host$request_uri;
	}
	server {
		listen 8080;
		location /health {
			access_log off;
			return 200 'true';
		}
		# 첫번째 앱
		location /sqlTester {
			rewrite /sqlTester(.*) /$1 break;
			proxy_pass http://127.0.0.1:3001;
			proxy_redirect     off;
			proxy_set_header   Host $host;
		}
	}
}
```

### 5. 재시작

```bash
service nginx restart
```



### 6. AWS ELB 리스너 설정

| 로드 밸런서 protocol | 로드 밸런서 port | 인스턴스 protocol | 인스턴트 port | 암호                 | SSL    |
| -------------------- | ---------------- | ----------------- | ------------- | -------------------- | ------ |
| HTTP                 | 80               | HTTP              | 80            | 없음                 | 없음   |
| HTTPS                | 443              | HTTP              | 8080          | [변경](javascript:;) | -비밀- |



### 7. AWS ELB 상태검사 설정

| Ping 대상     | HTTP:8080/health |
| ------------- | ---------------- |
| 제한 시간     | 10초             |
| 간격          | 30초             |
| 비정상 임계값 | 2                |
| 정상 임계 값  | 10               |

### 8. SEQUNCE FLOW 구조도

```sequence
USER->AWS ELB: HTTP:80 요청
AWS ELB->nginx: HTTP:80 요청
nginx->USER: HTTP:80 리다이렉트 응답(HTTP 301)
USER->AWS ELB: HTTPS:443 요청
AWS ELB->nginx: HTTP:8080 요청
nginx->App: HTTP:3001
Note right of App: sqlTester
nginx->App: HTTP:3002
Note right of App: App2
nginx->App: HTTP:3003
Note right of App: App3
nginx->App: HTTP:3004
Note right of App: App4
```

 

