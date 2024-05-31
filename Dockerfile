FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y openjdk-11-jdk ca-certificates curl

RUN apt-get update && \ 
    apt-get install -y wget curl && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN wget https://get.jenkins.io/war-stable/latest/jenkins.war

RUN mkdir /var/jenkins_home

ENV JENKINS_HOME /var/jenkins_home

EXPOSE 8080

CMD ["java", "-jar", "jenkins.war"]
