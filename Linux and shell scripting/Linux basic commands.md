# Linux Basic Commands — Practice Q&A

## File & Directory Basics

**1. Print your current working directory**
```bash
pwd
```

**2. Create a directory called `practice` and move into it**
```bash
mkdir practice && cd practice
```

**3. Create three empty files in one command**
```bash
touch file1.txt file2.txt file3.txt
```

**4. List all files (including hidden) in long format, human-readable sizes**
```bash
ls -lah
```

**5. Copy file1.txt to file1_backup.txt**
```bash
cp file1.txt file1_backup.txt
```

**6. Rename file2.txt to file2_renamed.txt**
```bash
mv file2.txt file2_renamed.txt
```

**7. Delete file3.txt**
```bash
rm file3.txt
```

**8. Create a directory tree project/src/utils in a single command**
```bash
mkdir -p project/src/utils
```

---

## Viewing & Editing Files

**9. Print the contents of /etc/os-release**
```bash
cat /etc/os-release
```

**10. Show only the first 5 lines of /etc/passwd**
```bash
head -n 5 /etc/passwd
```

**11. Show only the last 5 lines of a log file**
```bash
tail -n 5 /var/log/syslog
```

**12. Count lines, words, and characters in a file**
```bash
wc file1.txt
```

**13. Search for the word "root" in /etc/passwd**
```bash
grep "root" /etc/passwd
```

---

## Permissions & Ownership

**14. Check current permissions of a file**
```bash
ls -l file1.txt
```

**15. Give a file read, write, execute permission for owner only**
```bash
chmod u=rwx file1.txt
```

**16. Change file permission to 755 using numeric mode**
```bash
chmod 755 file1.txt
```

**17. Change owner of a file to another user**
```bash
chown username file1.txt
```

**18. Add execute permission to a file for everyone**
```bash
chmod a+x file1.txt
```

---

## User & System Info

**19. Show the currently logged-in user**
```bash
whoami
```

**20. Show all logged-in users**
```bash
who
```

**21. Display system uptime**
```bash
uptime
```

**22. Display disk usage of the current directory**
```bash
du -sh .
```

**23. Display available memory (RAM)**
```bash
free -h
```

**24. Show the Linux kernel version**
```bash
uname -r
```

---

## Process Management

**25. List all currently running processes**
```bash
ps aux
```

**26. Find the process ID of a running process (e.g. bash)**
```bash
pgrep bash
```

**27. Kill a process using its PID**
```bash
kill -9 <PID>
```

**28. Show real-time system resource usage (CPU/memory)**
```bash
top
```

---

## Networking Basics

**29. Check your machine's IP address**
```bash
ip a
```

**30. Test connectivity to google.com (send only 4 packets)**
```bash
ping -c 4 google.com
```

**31. Show which ports are currently listening**
```bash
netstat -tulnp