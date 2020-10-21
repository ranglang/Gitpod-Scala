FROM gitpod/workspace-full
RUN ls -ls /usr/bin/
USER root
ENV SCALA_VERSION 2.12.7
RUN curl -L https://github.com/lihaoyi/mill/releases/download/0.7.4/0.7.4 > /usr/local/bin/mill &&  chmod +x /usr/local/bin/mill

RUN  wget -q https://mirrors.huaweicloud.com/openjdk/9/openjdk-9_linux-x64_bin.tar.gz && tar zxf openjdk-9_linux-x64_bin.tar.gz
RUN ls -l
RUN sudo update-alternatives --install /usr/bin/java java $HOME/jdk-9/bin/java 2

# Install Scala
## Piping curl directly in tar
RUN \
  curl -fsL https://downloads.typesafe.com/scala/$SCALA_VERSION/scala-$SCALA_VERSION.tgz | tar xfz - -C $HOME/ && \
  echo >> $HOME/.bashrc && \
  echo "export PATH=~/scala-$SCALA_VERSION/bin:$PATH" >> /root/.bashrc
  
USER gitpod

RUN mill -version
