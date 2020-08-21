FROM centos:7
MAINTAINER Mr.Suparoek wiriyagoon
RUN yum -y install gcc openssl-devel apr-devel apr-util-devel wget make 
RUN yum -y install httpd ; yum clean all
COPY index.html /var/www/html/
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80

