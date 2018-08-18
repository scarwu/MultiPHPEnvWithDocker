#!/usr/bin/env bash

cd `dirname $0`

IMAGE_NAME="scarwu/demo-nginx:1.14"

case "$1" in
    build)
        docker build -t $IMAGE_NAME .
        ;;

    push)
        docker push $IMAGE_NAME
        ;;
    *)
        echo $"Usage: $0 {build|push}"
        exit 1
esac
