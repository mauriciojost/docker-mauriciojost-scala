#Download base image ubuntu 16.04
FROM hseeberger/scala-sbt
 
RUN apt-get update
 
# Java
RUN apt-get install -y openjdk-8-jdk 

# GUI testing with JAVA
RUN apt-get install -y openjfx xvfb 


 
