#!/usr/bin/env bash

cd `dirname $0`

function build {
    for CONTAINER in `find "." -maxdepth 1`
    do
        if [ $CONTAINER != "." ] && [ -d $CONTAINER ]; then
            ./$CONTAINER/image.sh build
        fi
    done
}

function push {
    for CONTAINER in `find "." -maxdepth 1`
    do
        if [ $CONTAINER != "." ] && [ -d $CONTAINER ]; then
            ./$CONTAINER/image.sh push
        fi
    done
}

case "$1" in
    build)
        build
        ;;

    push)
        push
        ;;
    *)
        echo $"Usage: $0 {build|push}"
        exit 1
esac
