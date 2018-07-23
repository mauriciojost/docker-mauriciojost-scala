// https://getintodevops.com/blog/building-your-first-docker-image-with-jenkins-2-guide-for-developers
node {

  def imgName
  def imgVersion
  def customImage

  stage('Clone repository') {
    /* Let's make sure we have the repository cloned to our workspace */
    checkout scm
  }

  stage('Build image') {
    /* This builds the actual image; synonymous to docker build on the command line */
    imgName =  readFile env.WORKSPACE+"/imagename.txt"
    customImage = docker.build("${imgName}", ".")
  }

  stage('Test image') {
    /* Ideally, we would run a test framework against our image */

    customImage.inside {
      sh 'echo "Tests passed"'
    }
  }

  stage('Push image') {
    imgVersion = readFile env.WORKSPACE+"/version.txt"
    docker.withRegistry('https://registry.hub.docker.com', 'docker_pass') {
      /* Push the container to the custom Registry */
      customImage.push("${imgVersion}")
      customImage.push("latest")
    }
  }

}
