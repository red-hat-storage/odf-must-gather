FROM registry.ci.openshift.org/ocp/4.20:cli

WORKDIR /usr/bin
COPY collection-scripts .

WORKDIR /
COPY templates ./templates

# We do not need it as of now
# jq is not preinstalled on openshift/origin-cli either
# Removing this step makes local development easier.
# RUN yum install --setopt=tsflags=nodocs -y jq && yum clean all && rm -rf /var/cache/yum/*

ENTRYPOINT ["/usr/bin/gather"]
