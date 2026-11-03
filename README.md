# Homebrew MFDOIT Tap 🍺

[![Homebrew](https://img.shields.io/badge/Homebrew-Tap-FBB040?logo=homebrew&logoColor=black)](https://brew.sh/)
[![Release](https://img.shields.io/github/v/release/wreckingadm/homebrew-mfdoit?label=CLI%20Release&color=007ec6)](https://github.com/wreckingadm/homebrew-mfdoit/releases)
[![Platform](https://img.shields.io/badge/Platform-macOS%20%7C%20Linux-blue?logo=apple&logoColor=white)](#installation)
[![Web App](https://img.shields.io/badge/Web%20App-mfdoit.wreckreation.org-2ea44f?logo=googlechrome&logoColor=white)](https://mfdoit.wreckreation.org)

Official [Homebrew](https://brew.sh/) tap for **MFDOIT** — a cloud-native, high-efficiency personal task management platform designed for speed, clarity, and daily execution.

🔗 **Live Application:** [https://mfdoit.wreckreation.org](https://mfdoit.wreckreation.org)

---

## ⚡ What is MFDOIT?

**MFDOIT** is an actively developed personal productivity ecosystem engineered to eliminate task clutter and decision fatigue. It blends fast, keyboard-first task entry with structured matrix prioritization to help engineers, builders, and professionals focus on what actually moves the needle each day.

### Highlights
- 🎯 **Matrix Prioritization:** Franklin Covey-inspired priority framework (`A1`–`C9`) with automated ordering across "Today" and "Backlog" streams.
- ⚡ **Lightning-Fast CLI:** Full-featured command-line client (`mfdoit` and alias `mfd`) with single-command actions, interactive terminal GUI dashboard, and natural shorthand parsing (e.g. `A1 Ship v1.21 #infra /s`).
- 🤖 **Automated Carryover:** Cloud-scheduled automation seamlessly rolls forward uncompleted tasks and preserves context with threaded notes and activity logs.
- 🔍 **Keyboard Spotlight (Cmd+K):** Instant global search and tag filtering across all active and historical tasks.
- 🌐 **Multi-Platform Ecosystem:** Modern web application, interactive terminal client, and companion Chrome extension for capturing tasks anywhere without breaking flow.
- 🔗 **Rich Productivity Previews:** Automatic metadata cards and inline previews for linked GitHub Pull Requests & Issues, Trello cards, and Google Workspace documents.

---

## 📦 Installation

Install the official `mfdoit` CLI using Homebrew on macOS or Linux:

### 1. Add the Tap & Install
```bash
# Add the MFDOIT Homebrew tap
brew tap wreckingadm/mfdoit

# Install the CLI tool
brew install mfdoit
```

*Or install directly in a single step:*
```bash
brew install wreckingadm/mfdoit/mfdoit
```

> **Note:** During installation, Homebrew automatically configures both `mfdoit` and the shorthand alias `mfd` so you can use either command interchangeably.

### 2. Verify Installation
```bash
mfdoit --version
# or
mfd --version
```

### 3. Upgrading
Keep your CLI up to date with new releases:
```bash
brew update && brew upgrade mfdoit
```

---

## 🚀 Quickstart Guide

### Authenticate
Log in securely via your browser using Google OAuth:
```bash
mfdoit login
```

### Common Commands
```bash
# Add a prioritized task with tags
mfdoit add "A1 Deploy release candidate to staging #devops"

# Add a task using shorthand alias
mfd add "B2 Review security audit findings #compliance"

# List today's pending tasks sorted by priority
mfdoit list

# Launch the interactive terminal GUI dashboard
mfdoit gui

# Mark a task as done
mfdoit done <task-id>

# Search tasks by keyword or tag
mfdoit list --search "#devops"

# View all commands and flags
mfdoit --help
```

---

## 🏗️ Architecture & Technology Stack

MFDOIT is designed with a modern, cloud-native serverless architecture focused on reliability, performance, and low-latency interaction:

- **CLI Application:** Built with **TypeScript** and **Node.js** ([oclif](https://oclif.io)), featuring terminal dashboard interfaces, offline resilience, and secure credential storage.
- **Web Frontend:** Server-rendered **Next.js** (React) styled with **Tailwind CSS**, providing instant UI updates and keyboard-driven workflows.
- **Cloud Infrastructure:** Serverless containerized microservices hosted on **Google Cloud Platform** (Cloud Run, Cloud Firestore, Cloud Scheduler, Secret Manager) automated via **Terraform**.
- **Edge Security & Routing:** Edge caching, custom domain SSL/TLS, and WAF shielding managed via **Cloudflare**.
- **CI/CD & Delivery:** Automated multi-stage GitHub Actions pipelines running type-checking, Vitest unit/integration tests, Playwright E2E suites, automated semantic releases, and continuous formula publishing to this Homebrew tap.

---

## 🛠️ Repository & Issues

- **Web Application:** [mfdoit.wreckreation.org](https://mfdoit.wreckreation.org)
- **Homebrew Tap:** [github.com/wreckingadm/homebrew-mfdoit](https://github.com/wreckingadm/homebrew-mfdoit)
- **Report an Issue:** Submit feedback directly through the web UI or via the CLI:
  ```bash
  mfdoit bug "Describe the problem here"
  mfdoit feedback "Share your suggestions"
  ```

---

*Maintained by Colin Wilkinson ([@wreckingadm](https://github.com/wreckingadm)).*
