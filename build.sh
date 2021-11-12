VERSION=1.0.0

ARCH=""
dockerArch=$(docker info | grep Architecture | cut -d' ' -f3 | sed -e 's/\s+//g')
case "${dockerArch}" in
    amd64)   ARCH='amd64';;
    x86_64)  ARCH='amd64';;
    arm64)   ARCH='arm64';;
    aarch64) ARCH='arm64';;
    *) echo "unsupported architecture: $dockerArch"; exit 1 ;;
esac


docker build -t schnell18/rocketmq-dashboard:$VERSION-alpine-${ARCH} .
docker push schnell18/rocketmq-dashboard:$VERSION-alpine-${ARCH}
