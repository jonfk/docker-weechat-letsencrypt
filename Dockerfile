FROM alpine

RUN apk add --no-cache\
        weechat\
        python

ENV LANG C.UTF-8
ENV HOME /weechat

#Create user to run screen/weechat
RUN mkdir -p $HOME/.weechat\
    && addgroup weechat\
    && adduser -h $HOME -D -s /bin/bash -G weechat weechat\
    && chown -R weechat:weechat $HOME

#Expose for persistance
VOLUME /weechat/.weechat

WORKDIR $HOME
USER weechat

EXPOSE 9001

ENTRYPOINT ["weechat"]