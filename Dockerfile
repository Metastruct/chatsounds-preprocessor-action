FROM potcfdk/chatsounds-preprocessor
RUN apk add --no-cache bash
COPY github-runner.sh /usr/bin/
ENTRYPOINT [ "/usr/bin/github-runner.sh" ]