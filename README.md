# README

Docker image & Jenkinsfile for scala / sbt projects

Thought to be used via pipelines in Jenkins.

To build, set up a jenkins instance and create a Jenkinsfile pipeline. 

Remember to create credentials containing the docker user and password and name it `docker_pass`.

## Manual build 

Install:

```
sudo apt-get install docker-ce
```

Then :

```
./build
```
