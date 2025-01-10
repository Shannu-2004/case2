cd /opt/docker
docker build -t ztomcat .
docker run -d --name ztomcat_container -p 8085:8080 ztomcat

FROM tomcat:latest
RUN cp -R /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps/
COPY ./*.war /usr/local/tomcat/webapps
