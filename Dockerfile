#Download base image ubuntu 16.04
FROM hseeberger/scala-sbt

COPY sources.list /etc/apt/sources.list
 
RUN apt-get update; exit 0
 
# Java
RUN apt-get install -y openjdk-8-jdk 



 
