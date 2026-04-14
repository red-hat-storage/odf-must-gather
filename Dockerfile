FROM registry.ci.openshift.org/ocp/4.20:cli

# Allow CNSA must-gather image to be specified at the build time
ARG CNSA_MG_IMAGE="icr.io/cpopen/ibm-spectrum-scale-must-gather:v6.0.1.0"
ENV CNSA_MG_IMAGE="${CNSA_MG_IMAGE}"

WORKDIR /usr/bin
COPY collection-scripts .

WORKDIR /
COPY templates ./templates

# We do not need it as of now
# jq is not preinstalled on openshift/origin-cli either
# Removing this step makes local development easier.
# RUN yum install --setopt=tsflags=nodocs -y jq && yum clean all && rm -rf /var/cache/yum/*

ENTRYPOINT ["/usr/bin/gather"]
