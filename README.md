# drone-utils
A Docker image to be used in multiple drone.io pipelines with common utilities.

#How to use

```
services:
  docker:
    image: docker:stable
    privileged: true

pipeline:
  publish_image:
    image: garusis/drone-utils:0.8.2
    group: publish
    commands:
      - docker ps
    secrets: [aws_access_key_id, aws_secret_access_key, aws_default_region, docker_host]
    when:
      branch: [dev]
```

# Secrets
* **docker_host** should be the docker url service url. Usually `tcp://docker:2375`