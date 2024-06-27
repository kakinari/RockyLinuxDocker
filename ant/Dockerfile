ARG BASE=8-jdk11
FROM kakinari/rocky-ja:${BASE}
ARG TARGET=1.10.14
ENV ANT_HOME /opt/ant
RUN dnf -y update;dnf -y upgrade;dnf -y install unzip;rm -rf /var/cache/dnf/*;\
(cd /opt;curl -O https://downloads.apache.org/ant/binaries/apache-ant-${TARGET}-bin.zip;\
unzip apache-ant-${TARGET}-bin.zip;ln -s  apache-ant-${TARGET} ant;ln -s /opt/ant/bin/* /usr/local/bin;\
rm -f apache-ant-${TARGET}-bin.zip)
