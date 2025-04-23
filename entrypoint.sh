#!/bin/bash

echo "============ Running Podcast Feed Generator ============"

# Set up Git identity
git config --global user.name "${GITHUB_ACTOR}"
git config --global user.email "${INPUT_EMAIL}"
git config --global --add safe.directory /github/workspace

# Run the Python feed generator
python3 feed.py

# Commit and push the changes
git add -A
git commit -m "update feed"
git push origin main

echo "============ Done ============"
