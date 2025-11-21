# 베이스 이미지
FROM quay.io/centos/centos:9

# 웹 패키지 설치
RUN yum -q -y install httpd && yum clean all

# 웹 서비스 설정
COPY . /var/www/html

# 웹 서비스 기동
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]

# 웹 서비스 포트 지정
EXPOSE 80

