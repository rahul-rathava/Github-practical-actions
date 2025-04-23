# 🎧 The Future in Tech — Podcast Feed Generator

This project is a practical implementation of a **custom GitHub Action** that generates an RSS feed for a podcast series. It also showcases GitHub Pages for publishing a static site.

> 🔨 Built while learning how to use **GitHub Actions** and **Docker** in real-world projects.

---

## 📌 Project Overview

- Generates a podcast feed using a custom action.
- Uses a YAML configuration to describe podcast metadata.
- RSS feed is created using a Python script inside a Docker container.
- GitHub Pages is used to host the output.

---

## ⚙️ How It Works

1. **Custom GitHub Action** runs via a Docker container.
2. **Python script (`feed.py`)** reads from a YAML file and generates `rss.xml`.
3. **GitHub Pages** deploys the latest site, including podcast metadata and feed.

---

## 🧪 Repository Structure

