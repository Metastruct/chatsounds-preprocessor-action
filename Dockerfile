FROM potcfdk/chatsounds-preprocessor
USER root
COPY github-runner.sh /usr/bin/
ENTRYPOINT [ "/usr/bin/github-runner.sh" ]