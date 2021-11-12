docker manifest create schnell18/rocketmq-dashboard:1.0.0-alpine \
    --amend schnell18/rocketmq-dashboard:1.0.0-alpine-arm64 \
    --amend schnell18/rocketmq-dashboard:1.0.0-alpine-amd64

docker manifest push schnell18/rocketmq-dashboard:1.0.0-alpine
