<h1 align="center">🛠️ Modular Linux Scripts</h1>

<p align="center">
A modular collection of Bash scripts, dotfiles, and utilities for Linux-based systems.<br>
Optimized for speed, portability, and workflow automation.
</p>

<p align="center">
  <a href="#-features">Features</a> •
  <a href="#-structure">Structure</a> •
  <a href="#-installation">Installation</a> •
  <a href="#-usage">Usage</a> •
  <a href="#-license">License</a>
</p>

---

## ✨ Features

- **Modular design** – each tool lives in its own folder.
- **Portable** – just clone & add to your `PATH`.
- **Documented** – all scripts explained in `docs/`.
- **Linux-first** – designed for GNU/Linux environments.
- **Reusable** – share across machines without breaking things.

---

## 📂 Structure

```text
morara-linux-toolbox/
├── bin/                # Executable scripts grouped by app
│   ├── github/          # GitHub automation scripts
│   ├── vim/             # Vim setup & management scripts
│   ├── tmux/            # Tmux session/workflow helpers
│   ├── system/          # General Linux system utilities
│   └── network/         # Networking-related scripts
│
├── config/              # Config files (dotfiles)
│   ├── vim/
│   ├── tmux/
│   └── git/
│
├── lib/                 # Shared helper functions
├── docs/                # Documentation
└── README.md

