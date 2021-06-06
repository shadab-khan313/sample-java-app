#ARG tomcat_version
FROM kulbhushanmayer/tomcat:10.0.6
COPY target/IndianStates.war /opt/app/apache-tomcat-10.0.6/webapps/IndianStates.war

