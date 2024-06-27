ARG BASE=8-jre11
FROM kakinari/rocky-ja:$BASE
ARG TARGET=11
RUN dnf -y update;dnf -y upgrade;dnf -y install java-${TARGET}-openjdk-devel java-${TARGET}-openjdk-jmods;rm -rf /var/cache/dnf/*
ENV JAVA_HOME /usr/lib/jvm/java-${TARGET}-openjdk
