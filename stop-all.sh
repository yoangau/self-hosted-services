#!/bin/bash

script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

for d in $script_dir/*/ ; do
    pushd "$d"
    docker-compose down
    popd
done