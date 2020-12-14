FROM registry:2
RUN mkdir -m 777 data auth
ENV REGISTRY_STORAGE_FILESYSTEM_ROOTDIRECTORY=/data
env REGISTRY_AUTH htpasswd
env REGISTRY_AUTH_HTPASSWD_REALM Registry
env REGISTRY_AUTH_HTPASSWD_PATH /auth/registry.password
RUN  apk update && apk add apache2-utils
RUN cd auth && htpasswd -b -B -c registry.password admin WilliamC0der
EXPOSE 5000
