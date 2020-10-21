FROM gitpod/workspace-full
RUN ls -ls /usr/bin/
USER root
RUN curl -L https://github.com/lihaoyi/mill/releases/download/0.7.4/0.7.4 > /usr/local/bin/mill &&  chmod +x /usr/local/bin/mill

RUN  add-apt-repository ppa:webupd8team/java
RUN apt-get update && apt-get install oracle-java9-installer
USER gitpod

RUN mill -version
