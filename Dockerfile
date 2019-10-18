FROM node:12

LABEL version="0.2"
LABEL "repository"="https://github.com/xmflsct/action-publish-gatsby"
LABEL "homepage"="https://github.com/xmflsct"
LABEL "maintainer"="Zhiyuan Zheng <me@xmflsct.com>"

RUN yarn global add gatsby-cli \
    && gatsby telemetry --disable

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
