FROM maven:3.6.1-jdk-8-slim 
COPY dependency-checker/ /root/dependency-checker  
RUN mvn -f /root/dependency-checker/pom.xml clean verify
RUN rm  -rf /root/dependency-checker
