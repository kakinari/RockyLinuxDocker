ARG BASE=8-jre11
FROM kakinari/rocky-ja:${BASE}
ARG TARGET=9
ARG SUB=0.89
ENV CATALINA_VERSION=${TARGET}.${SUB}
ENV CATALINA_HOME=/opt/tomcat_home
ENV CATALINA_BASE=/opt/tomcat
COPY startup.sh /opt/
COPY tomcat.service /etc/systemd/system/
EXPOSE 8080
RUN groupadd -g 8080 apache;\
useradd -u 8080 -g apache tomcat;\
(cd /opt ;\
curl -O https://downloads.apache.org/tomcat/tomcat-${TARGET}/v${CATALINA_VERSION}/bin/apache-tomcat-${CATALINA_VERSION}.tar.gz;\
tar xvzf apache-tomcat-${CATALINA_VERSION}.tar.gz;\
mv -f apache-tomcat-${CATALINA_VERSION} ${CATALINA_HOME};\
mkdir $CATALINA_BASE);\
(cd $CATALINA_BASE; mkdir bin conf logs webapps lib work temp;\
(cd bin;\
touch setenv.sh;\
mv /opt/startup.sh .; \
chmod 750 *.sh;\
ln -s startup.sh shutdown.sh);\
cp $CATALINA_HOME/bin/tomcat-juli.jar bin;\
cp -r $CATALINA_HOME/webapps/* webapps;\
cp -r $CATALINA_HOME/conf/* conf;\
cp -r $CATALINA_HOME/lib/* lib);\
chown -R tomcat:apache $CATALINA_HOME;\
chown -R tomcat:apache $CATALINA_BASE;\
rm -rf $CATALINA_HOME/webapps/*;\
chmod +x $CATALINA_HOME/bin/*.sh;\
rm -f /opt/*.tar.gz;\
rm -f $CATALINA_HOME/[A-Z]*;\
rm -f $CATALINA_HOME/bin/*.bat;\
rm -f $CATALINA_HOME/bin/*.tar.gz;\
ln -s /etc/systemd/system/tomcat.service /etc/systemd/system/multi-user.target.wants/tomcat.service;
