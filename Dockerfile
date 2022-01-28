FROM jenkins/jenkins:lts-jdk11
COPY --chown=jenkins:jenkins ROOT/usr/share/jenkins/ref/plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN jenkins-plugin-cli -f /usr/share/jenkins/ref/plugins.txt