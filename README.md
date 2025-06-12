# 🔐 Bash64Wordlist

**Bash64Wordlist** is a simple Bash tool that generates Base64-encoded `username:password` combos — ideal for HTTP Basic Auth brute-forcing via **Burp Suite**, `ffuf`, `curl`, etc.

---

## ⚡ Why Use It?

- Converts `username:password` to Base64 (for Basic Auth)
- Supports 1:1 pairing only (line-by-line)
- Trims longer list to match the shorter
- Output is ready for direct use in headers

---

## ✅ **Install**

```bash
git clone https://github.com/cryptspecter/Bash64Wordlist.git
cd Bash64Wordlist
chmod +x Bash64Wordlist
```

To make it globally accessible:

```bash
sudo cp Bash64Wordlist /usr/local/bin/
```

Then you can run it from anywhere:

```bash
Bash64Wordlist -u usernames.txt -p passwords.txt -o output.txt
```

---

## 📦 Usage

```bash
Bash64Wordlist -u usernames.txt -p passwords.txt -o output.txt
```

### Args:

| Flag | Description         |
|------|---------------------|
| `-u` | Username wordlist   |
| `-p` | Password wordlist   |
| `-o` | Output file (Base64) |

---

## 📁 Example

**usernames.txt**
```
admin
root
user
```

**passwords.txt**
```
admin123
toor
1234
```

**output.txt**
```
YWRtaW46YWRtaW4xMjM=
cm9vdDp0b29y
dXNlcjoxMjM0
```

---

## 🔥 Use Cases

### Burp Suite:
Replace in headers:
```
Authorization: Basic <payload>
```

### curl:
```bash
curl -H "Authorization: Basic YWRtaW46YWRtaW4xMjM=" https://target.com
```

---

## 📜 License

MIT — Free for commercial and personal use.

---

## 👤 Author

Built by @cryptspecter  
Contributions welcome!
