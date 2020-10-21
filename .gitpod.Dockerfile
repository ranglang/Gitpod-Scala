FROM gitpod/workspace-full
USER gitpod
RUN ls -ls /usr/bin/
RUN sudo curl -L https://github.com/lihaoyi/mill/releases/download/0.7.4/0.7.4 > /usr/bin/mill && sudo chmod +x /usr/bin/mill
RUN mill -version
