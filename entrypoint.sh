git config --global user.email "${INPUT_EMAIL}"
git config --global --add safe.directory /github/workspace

# Run your Python script using the Python interpreter from the virtual environment
/venv/bin/python /usr/bin/feed.py

git add -A && git commit -m "Update Feed"
git push --set-upstream origin main

echo "==================="
