FROM gitpod/workspace-full
RUN ls -ls /usr/bin/
RUN sudo curl -L https://github.com/lihaoyi/mill/releases/download/0.7.4/0.7.4 > /usr/bin/mill && sudo chmod +x /usr/bin/mill
USER gitpod

RUN mill -version
