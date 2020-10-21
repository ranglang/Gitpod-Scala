FROM gitpod/workspace-full
RUN ls -ls /usr/bin/
USER root
RUN curl -L https://github.com/lihaoyi/mill/releases/download/0.7.4/0.7.4 > /usr/local/bin/mill &&  chmod +x /usr/local/bin/mill

RUN  wget https://mirrors.huaweicloud.com/openjdk/9/openjdk-9_linux-x64_bin.tar.gz && tar zxvf openjdk-9_linux-x64_bin.tar.gz
RUN ls -l
RUN sudo update-alternatives --install /usr/bin/java java $HOME/jdk-9/bin/java
USER gitpod

RUN mill -version
