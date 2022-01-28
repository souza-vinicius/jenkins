FROM jenkins/jenkins:lts-jdk11
ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false"
COPY --chown=jenkins:jenkins ROOT/usr/share/jenkins/ref/init.groovy.d/executors.groovy /usr/share/jenkins/ref/init.groovy.d/executors.groovy
COPY --chown=jenkins:jenkins ROOT/usr/share/jenkins/ref/plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN jenkins-plugin-cli -f /usr/share/jenkins/ref/plugins.txt