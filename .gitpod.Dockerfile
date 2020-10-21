FROM gitpod/workspace-full
USER gitpod
RUN sudo curl -L https://github.com/lihaoyi/mill/releases/download/0.7.4/0.7.4 > /usr/local/bin/mill && sudo chmod +x /usr/local/bin/mill
RUN mill -version
