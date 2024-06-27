ARG BASE=8
FROM kakinari/rocky-ja:$BASE
ARG TARGET=11
RUN dnf -y update;dnf -y upgrade;dnf -y install java-${TARGET}-openjdk;rm -rf /var/cache/dnf/*
ENV JAVA_HOME /usr/lib/jvm/jre-${TARGET}-openjdk
