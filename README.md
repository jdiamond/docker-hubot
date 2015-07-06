# Hubot in Docker

Running with no command opens the Hubot shell:

```
$ docker run -it jdiamond/hubot
Hubot> hubot ping
PONG
Hubot> exit
```

Really meant to be used as a base for other Docker images that bundle custom
adapters and scripts.

Uses file-brain, by default.

Comes with commands for adding and removing scripts. For example, to remove
file-brain and add hubot-redis-brain:

```
RUN ./remove-hubot-scripts file-brain.coffee && \
    ./add-external-scripts hubot-redis-brain

```
