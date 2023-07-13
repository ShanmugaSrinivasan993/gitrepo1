FROM jenkins/jenkins:lts
USER root
RUN curl ssl https://get.docker.com/ | sh
USER jenkins
