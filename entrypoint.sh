#!/bin/bash

echo "============ Starting Feed Generation ============"

# Setup git config
git config --global user.name "${GITHUB_ACTOR}"
git config --global user.email "${INPUT_EMAIL}"  # <- Fixed: was user.name instead of user.email

# Mark workspace as safe for git
git config --global --add safe.directory /github/workspace

# Run your Python script
python3 /app/feed.py   # <- Fixed path: Linux-style, not Windows

# Push changes to GitHub
git add -A
git commit -m "update feed" || echo "Nothing to commit"
git push origin main

echo "============ Feed Generation Done ============"
