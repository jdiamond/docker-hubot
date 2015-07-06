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
