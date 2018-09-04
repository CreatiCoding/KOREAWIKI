# AWS 관련 문서 백업

## Overview
관련 내용은 몇년 전에 정리해준 자료지만 UI가 더 사용하기 쉽게 변하여 해당 문서를 참고하여 비슷한 방향으로 진행하면 됩니다.

## Written By
[CreatiCoding](https://github.com/CreatiCoding)

## 00_AWS_BASIC.1.0.1

AWS Basic	1

목차	1

１	AWS 기본 설정	2

가)	최초 가입 후 AWS 기본 설정	2

２	AWS 이용 기본 구조	3

가)	aws beanstalk 이용 기본 구조	3

３	AWS ec2 접속 방법	4

가)	리눅스 기준 putty로 접속 방법	4

４	AWS 기본 페이지	5

가)	서비스 이용 기본 페이지	5

나)	서비스 소개 페이지	5

다)	서비스 설명 페이지	5

５	AWS Free Tier	5

가)	무료 티어 혜택	5

６	청구서 조회	6

가)	비용 조회	6

나)	비용 대시보드	7

７	aws 서비스 문의	10

가)	이용가능한 문의 서비스	10

나)	문의 전화	10


## 01_AWS_BEANSTALK.1.0.1

AWS Beanstalk	1

목차	1

１	Beanstalk란	2

가)	Beanstalk	2

나)	(참조 : https://aws.amazon.com/ko/elasticbeanstalk/?nc2=h_m1 )	2

２	Beanstalk 생성	2

가)	Beanstalk 페이지 진입	2

나)	Application 생성	3

다)	Environment 생성	4

３	Beasntalk 배포	9

가)	War 파일 생성	9

나)	Beanstalk 에 War 배포	10

다)	배포 기록하기	11

４	Beanstalk 버전 되돌리기	12

가)	Beanstalk 버전 되돌리기	12

５	Beanstalk TimeZone 설정	13

가)	JVM command line options 설정을 한다.	13

６	Beanstalk Auto Scaling 설정	15

가)	Auto Sacling이란	15

나)	Auto Scaling 설정하기	15

다)	그 외의 auto scaling에 대한 내용 : AWS AUTO SCALING	17



## 02_AWS_도메인_Route53.1.0.1

AWS Route 53 / Certificate / ebextensions	1

목차	1

１	Route 53이란	1

２	도메인 등록	2

가)	Route 53 페이지 진입	2

나)	Hosted Zone 생성	2

３	AWS Https Certificate (AWS SSL) 무료 발급	4

가)	Certificate Manager 페이지 진입	4

나)	Certificate 요청 및 발급	5

４	Beanstalk에 도메인과 Https를 연결	9

가)	Beanstalk에 도메인을 연결	9

나)	Beanstalk에 https(ssl 인증서) 연결	11

다)	.Ebextensoins(Http to Https in Beanstalk)	14

５	서브 도메인 (CDN 이용)	18

가)	Route 53 페이지로 이동	18

나)	서브 도메인 등록	18





## 03_AWS_s3_스토리지.1.0.0

AWS S3 Storage	1

목차	1

１	S3란	2

가)	S3용어	2

나)	(참조 : https://aws.amazon.com/ko/s3/?nc2=h_m1 )	2

２	S3 Bucket 생성	2

가)	S3 페이지 진입	2

나)	S3 Bucket 생성	2

３	S3 Bucket 정책 관리	3

가)	S3 페이지 진입	3

나)	S3 Bucket 정책수정	3

４	S3 Browser 이용법	5

가)	S3 Browser 란	5

나)	S3 Browser 다운로드	5

다)	S3 Browser 이용법	6

５	S3 SDK를 이용한 JAVA UTIL	7

가)	AWS SDK 의존성 추가	7

나)	AWS S3 소스 코드	7



## 04_AWS_CloudFront_CDN.1.0.1

AWS CloudFront CDN	1

목차	1

１	Cloud Front란	1

가)	Cloud Front용어	1

나)	(참조 : https://aws.amazon.com/ko/cloudfront/?nc2=h_m1 )	1

２	Cloud Front 생성	1

가)	Cloud Front 페이지 진입	1

나)	Cloud Front 생성	2



## 05_AWS_RDS.1.0.0

AWS RDS DB	1

목차	1

１	RDS란	2

가)	RDS용어	2

２	RDS 생성	2

가)	RDS 페이지 진입	2

나)	RDS 생성	3

３	PostgreSQL 관리 툴 PgAdmin	9

가)	PostgreSQL 관리 도구 PgAdmin 설치	9

나)	서버 등록	10

다)	서버 사용법	11

４	DB 백업	12

가)	DB 백업	12

５	DB 복원	13

가)	DB 복원 서버 생성 및 등록	13

나)	DB 복원 서버에 DB 복원	13

６	rds auto scaling	14

가)	rds auto scaling	14

나)	postgresql auto sacling	14

７	RDS Parameter Group	15

가)	rds Parameter Group 생성	15

나)	rds Parameter Group 적용	17

８	RDS Security Group	20

가)	RDS SECURITY GROUP 변경	20
