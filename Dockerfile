from jenkins/jnlp-slave

USER root

RUN apt-get update \ 
    && apt-get -y install \
        apt-transport-https \
        ca-certificates \
        curl \
        gnupg2 \
        software-properties-common \
    && apt-get install -y mysql-client \
    && apt-get autoremove -y
