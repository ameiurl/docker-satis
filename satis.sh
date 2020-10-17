#!/usr/bin/env bash

docker run --rm --init -it -v "$(pwd)"/satis.json:/satis.json:ro \
-v "$(pwd)"/public/:/build \
-v ~/.ssh:/root/.ssh \
-v ~/.config/composer/:/composer \
composer/satis build /satis.json /build "$@"
