FROM tomcat:8.5.37-jre8
MAINTAINER kdsagar22@gmail.com
RUN apt-get update
ADD https://s3artifactkds.s3-ap-southeast-1.amazonaws.com/target/mahaLogin-1.0.war /usr/local/tomcat/webapps/
WORKDIR /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
