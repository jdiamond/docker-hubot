FROM node:0.12-slim

RUN groupadd -r hubot && \
    useradd -m -g hubot hubot && \
    apt-get update && \
    apt-get install -y --no-install-recommends python build-essential libicu-dev && \
    rm -rf /var/lib/apt/lists/* && \
    npm install -g yo generator-hubot && \
    npm cache clear

COPY add-external-scripts /home/hubot/add-external-scripts
RUN chmod +x /home/hubot/add-external-scripts

USER hubot
WORKDIR /home/hubot

RUN yo --no-insight hubot --defaults

RUN sed -i 's/ --name "hubot"//g' bin/hubot && \
    sed -i '/hubot-heroku-keepalive/d' external-scripts.json

CMD [ "bin/hubot" ]
