# Builder stage
FROM registry.ci.openshift.org/ocp/builder:rhel-8-golang-1.20-openshift-4.14 AS builder
WORKDIR /go/src/github.com/red-hat-storage/odf-must-gather

COPY . .
ENV GO_PACKAGE github.com/red-hat-storage/odf-must-gather

# Prod stage
FROM registry.ci.openshift.org/ocp/4.14:cli

RUN mkdir -p /templates
COPY --from=builder /go/src/github.com/red-hat-storage/odf-must-gather/collection-scripts/* /usr/bin/
COPY --from=builder /go/src/github.com/red-hat-storage/odf-must-gather/templates/* /templates/

# We do not need it as of now
# jq is not preinstalled on openshift/origin-cli either
# Removing this step makes local development easier.
# RUN yum install --setopt=tsflags=nodocs -y jq && yum clean all && rm -rf /var/cache/yum/*

ENTRYPOINT /usr/bin/gather