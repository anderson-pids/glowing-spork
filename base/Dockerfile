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
ONBUILD ARG USER_ID=1024
ONBUILD ARG GROUP_ID=1024

ONBUILD RUN create-user.sh ${USER_ID} ${GROUP_ID}
ONBUILD USER ${USER_NAME}
# ---------------------------------------

RUN apk update \
    && apk add --no-cache \
    bash \
    jq

COPY scripts/create-user /usr/local/bin

# Return to default entrypoint
ENTRYPOINT []