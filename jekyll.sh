#!/bin/bash
set -e
if [ "$1" == "build" ]; then
    bundle exec jekyll build --source /app/src --destination /app/_site
elif [ "$1" == "serve" ]; then
    bundle exec jekyll serve --source /app/src --destination /app/_site --watch --host 0.0.0.0
else
    echo "Usage: $0 {build|serve}"
    exit 1
fi
