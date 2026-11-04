#!/bin/sh
# Both images take every version from versions.env.
set -e
set -a; . ./versions.env; set +a
docker build -f Dockerfile.app --build-arg APP_BASE --build-arg OPA_VERSION -t reg/app .
docker build -f Dockerfile.api --build-arg API_BASE --build-arg OPA_VERSION -t reg/api .
