FROM centos
MAINTAINER BALAYYA_BABU
RUN yum install wget -y
RUN wget https://www-eu.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz
RUN tar -xvzf apache-tomcat-8.5.37.tar.gz
RUN yum install git -y
RUN git clone https://github.com/balu2750/warfile
RUN mv ./warfile/src/main/webapp/* /usr/local/tomcat/webapps/
RUN /usr/local/tomcat/bin/startup.sh
