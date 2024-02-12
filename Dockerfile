FROM jenkins/jenkins:lts
USER root
RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    apt install python3.11-venv -y && \
    rm -rf /var/lib/apt/lists/*
USER jenkins

