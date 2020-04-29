FROM jboss/wildfly
MAINTAINER "saiteja"
COPY ILP_Bookstore.war $JBOSS_HOME/standalone/deployments/
USER root
RUN chown jboss:jboss $JBOSS_HOME/standalone/deployments/ILP_Bookstore.war
USER jboss
EXPOSE 8080
CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0"]
