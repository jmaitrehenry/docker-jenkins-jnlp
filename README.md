# Jenkins JNLP Agent Docker image

[![Docker Stars](https://img.shields.io/docker/stars/jmaitrehenry/docker-jenkins-jnlp.svg)](https://hub.docker.com/r/jmaitrehenry/docker-jenkins-jnlp/)
[![Docker Pulls](https://img.shields.io/docker/pulls/jmaitrehenry/docker-jenkins-jnlp.svg)](https://hub.docker.com/r/jmaitrehenry/docker-jenkins-jnlp/)
[![Docker Automated build](https://img.shields.io/docker/automated/jmaitrehenry/docker-jenkins-jnlp.svg)](https://hub.docker.com/r/jmaitrehenry/docker-jenkins-jnlp/)

This is an image for [Jenkins](https://jenkins.io) agent using JNLP to establish connection.
It have docker client and docker-compose installed and docker images preloading.

For now, the agent will try to create the agent on jenkins master before connecting. If agent already exists on master, the connection will fail.

Base on [Jenkins JNLP Agent Docker image](https://github.com/jenkinsci/docker-jnlp-slave)

## Running
```
 docker run -d -v /var/run/docker.sock:/var/run/docker.sock \
	 -e JENKINS_URL=$JENKINS_URL \
	 -e LABELS=$LABELS \
	 -e USER=$USER \
	 -e JENKINS_AGENT_NAME=$SLAVE_NAME \
   -e JENKINS_REMOTE_FS=/ci/jenkins \
	 -e EXECUTORS=1 \
   -e DOCKER_PRELOAD_IMAGES="alpine nginx" \
   -e JENKINS_KNOWN_HOSTS="github.com ssh-rsa AAAAB3Nza...;bitbucket.org ssh-rsa AAAAB3Nz..." \
	 -v /tmp/jenkins:/tmp/jenkins \
	 jmaitrehenry/docker-jenkins-jnlp
```


