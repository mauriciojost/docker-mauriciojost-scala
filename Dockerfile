#Download base image ubuntu 16.04
FROM hseeberger/scala-sbt
 
RUN apt-get update
 
RUN apt-get install -y graphviz
 
