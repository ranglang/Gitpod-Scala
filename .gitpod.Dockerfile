FROM gitpod/workspace-full
RUN ls -ls /usr/bin/
USER root
RUN curl -L https://github.com/lihaoyi/mill/releases/download/0.7.4/0.7.4 > /usr/local/bin/mill &&  chmod +x /usr/local/bin/mill

RUN  apt update
RUN  apt install openjdk-9-jre
USER gitpod

RUN mill -version
