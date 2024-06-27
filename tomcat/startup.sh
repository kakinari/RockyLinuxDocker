#!/usr/bin/bash
export CATALINA_HOME=/opt/tomcat_home
export CATALINA_BASE=/opt/tomcat
${CATALINA_HOME}/bin/$(basename $0) $*

