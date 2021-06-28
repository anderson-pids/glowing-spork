FROM alpine:3.14
LABEL maintainer="Anderson P. <apds.anderson@gmail.com>"

USER root

# Begin non-root user configuration block
# ---------------------------------------
ENV USER_NAME=app
ENV WORKDIR=/${USER_NAME}
ENV HOME=/home/${USER_NAME}
ENV PATH=${PATH}:${HOME}/.local/bin
WORKDIR ${WORKDIR}

# Create image user with default id 1024
# ---------------------------------------
ARG USER_ID=1024
ARG GROUP_ID=1024

COPY scripts/* /usr/local/bin/
RUN create-user ${USER_ID} ${GROUP_ID}
# ---------------------------------------

# Install dependencies
# ---------------------------------------
RUN apk update \
    && apk add --no-cache \
    bash \
    jq \
    aws-cli
# ---------------------------------------

USER ${USER_NAME}
# Return to default entrypoint
ENTRYPOINT ["aws-token-generator"]