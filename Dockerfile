FROM jenkins/jenkins:lts

# if we want to install via apt
USER root
RUN apt-get install -y php libapache2-mod-php php-mcrypt php-curl

RUN curl -sL https://deb.nodesource.com/setup_6.9.2 | bash -
RUN apt-get install -y nodejs

# drop back to the regular jenkins user - good practice
USER jenkins
