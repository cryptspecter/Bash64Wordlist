# 🔐 Cred64

**Cred64** is a simple Bash tool that generates Base64-encoded `username:password` combos — ideal for HTTP Basic Auth brute-forcing via **Burp Suite**, `ffuf`, `curl`, etc.

---

## ⚡ Why Use It?

* Converts `username:password` to Base64 (for Basic Auth)
* Supports 1:1 pairing only (line-by-line)
* Trims longer list to match the shorter
* Output is ready for direct use in headers

---

## ✅ **Install**

```bash
git clone https://github.com/cryptspecter/Cred64.git
cd Cred64
chmod +x Cred64
```

To make it globally accessible:

```bash
sudo cp Cred64 /usr/local/bin/
```

Then you can run it from anywhere:

```bash
Cred64 -u usernames.txt -p passwords.txt -o output.txt
```

---

## 📦 Usage

```bash
Cred64 -u usernames.txt -p passwords.txt -o output.txt
```

### Args:

| Flag | Description          |
| ---- | -------------------- |
| `-u` | Username wordlist    |
| `-p` | Password wordlist    |
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
