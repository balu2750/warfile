FROM centos
MAINTAINER balu@gmail.com
RUN yum install wget -y
RUN yum install java-1.8.0-openjdk-devel -y 
RUN wget http://apachemirror.wuchna.com/tomcat/tomcat-8/v8.5.47/bin/apache-tomcat-8.5.47.tar.gz
RUN tar -xvzf apache-tomcat-8.5.47.tar.gz
RUN yum install git -y
RUN git clone https://github.com/balu2750/warfile
RUN mv ./warfile/src/main/webapp/* /apache-tomcat-8.5.47/webapps/.
RUN /apache-tomcat-8.5.47/bin/startup.sh
