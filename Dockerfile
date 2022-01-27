FROM jenkins:lts-jdk11
USER root
RUN usermod -u 123 -g 30 jenkins
USER jenkins
