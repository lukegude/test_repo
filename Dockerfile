FROM jenkins/jenkins:lts
USER root
RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    apt install python3.11-venv -y && \
    rm -rf /var/lib/apt/lists/*
# Install jenkins plugins
RUN /usr/local/bin/install-plugins.sh git matrix-auth workflow-aggregator docker-workflow blueocean credentials-binding
# Install docker
RUN curl -fsSL https://get.docker.com -o get-docker.sh && \
    sh get-docker.sh
RUN pip3 install docker-compose
USER jenkins

