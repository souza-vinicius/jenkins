FROM jenkins/jenkins:lts-jdk11
USER root
RUN usermod -u 123 -g 30 jenkins
USER jenkins
COPY --chown=jenkins:jenkins ROOT/usr/share/jenkins/ref/plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN jenkins-plugin-cli -f /usr/share/jenkins/ref/plugins.txt