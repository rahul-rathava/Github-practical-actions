#!/bin/bash

echo "============="

git config --global user.name "${GITHUB_ACTOR}"
git config --global user.name "${INPUT_EMAIL}"
git config --global --add safe.directory /github/workspace

python3 C:\Users\91757\code

git add -A && git commit -m "update feed"
git push --set-stream origin main

echo "============="
