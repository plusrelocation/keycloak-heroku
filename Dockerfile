FROM jboss/keycloak:16.1.1

COPY docker-entrypoint.sh /opt/jboss/tools

COPY keycloak-authenticator.jar /opt/jboss/keycloak/standalone/deployments

ENTRYPOINT [ "/opt/jboss/tools/docker-entrypoint.sh" ]
CMD ["-b", "0.0.0.0"]

