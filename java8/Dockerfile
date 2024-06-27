ARG BASE=8-jre8
FROM kakinari/rocky-ja:$BASE
RUN dnf -y update;dnf -y upgrade;dnf -y install java-1.8.0-openjdk-devel;rm -rf /var/cache/dnf/*
ENV JAVA_HOME /usr/lib/jvm/java-1.8.0-openjdk
