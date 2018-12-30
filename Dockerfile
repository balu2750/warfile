FROM centos
MAINTAINER BALAYYA_BABU
RUN yum install wget -y
RUN yum install java-1.8.0-openjdk-devel -y 
RUN wget https://www-eu.apache.org/dist/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz
RUN tar -xvzf apache-tomcat-8.5.37.tar.gz
RUN yum install git -y
RUN git clone https://github.com/balu2750/warfile
RUN mv ./warfile/src/main/webapp/* /apache-tomcat-8.5.37/webapps/.
RUN /apache-tomcat-8.5.37/bin/startup.sh
