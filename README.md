# 🔐 Bash64Wordlist

**Bash64Wordlist** is a lightweight Bash tool for generating Base64-encoded wordlists in the `username:password` format, designed primarily for HTTP Basic Authentication brute-forcing and fuzzing scenarios in bug bounty and penetration testing.

---

## ✨ Features

- 🔁 Supports 1:1 username-password mapping (same index match)
- 🧠 Automatically trims longer list to match shorter one
- 🧪 Designed for Basic Auth fuzzing
- 🐚 Pure Bash – no dependencies beyond `base64` and `grep`

---

## 📦 Usage

```bash
./Bash64Wordlist -u usernames.txt -p passwords.txt -o output.txt
