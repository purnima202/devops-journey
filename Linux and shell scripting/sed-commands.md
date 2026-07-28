# sed Command Notes

## 1. How to show only a given line or range of lines?
```bash
sed -n '1p' file_name
sed -n '1,5p' file_name
sed -n '$p' file_name
```

## 2. How to see all the users from India country?
```bash
sed -n '/India/p' file_name
```

## 3. How to use multiple expressions in sed command?
Example: to see only the 2nd and 5th line
```bash
sed -n -e '2p' -e '5p' file_name
```

## 4. How to see all the users from India and Germany?
```bash
sed -n -e '/India/p' -e '/Germany/p' file_name
```

## 5. How to see next 4 lines from the 2nd line?
```bash
sed -n '2,+4p' file_name
```

## 6. How to see every 2nd line from the first line?
```bash
sed -n '1~2p' file_name
```

## 7. How to read expressions from an external file?
```bash
sed -f ex_file file_name
```

## 8. How to replace a word in a file and show?
```bash
sed 's/<string_to_change>/<new_string>/g' file_name
```

## 9. How to replace a word except in a given line, or only in a given line?
```bash
sed '5 s/<string_to_change>/<new_string>/g' file_name    # only line 5
sed '5! s/<string_to_change>/<new_string>/g' file_name   # all except line 5
```

## 10. How to replace a word and edit the file directly?
```bash
sed -i 's/<string_to_change>/<new_string>/g' file_name
```

## 11. How to change salary or country of a user (Paul)?
```bash
sed '/Paul/ s/25000/35000/g' file_name
sed '/Paul/ s/India/US/g' file_name
```

## 12. How to delete a line?
```bash
sed '1d' file_name       # delete first line
sed '1,2d' file_name     # delete lines 1-2
sed '$d' file_name       # delete last line
```

## 13. How to delete users from India country?
```bash
sed '/India/d' file_name
```

## 14. How to delete empty lines?
```bash
sed '/^$/d' file_name
```

## 15. How to replace tab with space?
```bash
sed 's/\t/ /g' file_name
```

## 16. How to copy the output of a sed command into a separate file?
```bash
sed -n '/India/ w new_file_name' file_name
```

## 17. How to add a new line after a given line number?
```bash
sed '5 a new_text' file_name
```

## 18. How to add a new line after a given string (e.g. after "Paul")?
```bash
sed '/Paul/ a new_text' file_name
```

## 19. How to edit an existing line instead of adding a new one?
```bash
sed '5 c new_text' file_name    # replaces (changes) line 5
```

## 20. How to add a new line before a given string (e.g. before "Paul")?
```bash
sed '/Paul/ i new_text' file_name
```

## 21. How to see hidden characters?
```bash
sed -n 'l' file_name
```

## 22. How to wrap file content to a given number of characters?
```bash
sed -n 'l 50' file_name
```

## 23. How to read content from a file and use it in your command?
```bash
sed '3 r externalfile' file_name
```

## 24. How to stop execution of sed as soon as the first occurrence is found?
```bash
sed '/India/ q' file_name
sed '5 q' file_name    # stop execution at line 5
```

## 25. How to provide an exit status for your sed command?
```bash
sed '/India/ q 100' file_name
```

## 26. How to execute an external command (e.g. date) in your expression?
```bash
sed '2 e date' file_name
```

## 27. How to see line numbers in a file?
```bash
sed '=' file_name
```

---

## sed Regular Expressions

| Symbol | Meaning |
|---|---|
| `^` | start of line |
| `$` | end of line |
| `.` | single character |
| `[]` | match character set |
| `[^]` | exclusive set |
| `*` | zero or more occurrence |

### Examples
```bash
sed -n '/^2/p' file_name      # lines starting with 2
sed -n '/ia$/p' file_name     # lines ending with "ia"
```

**Find a 5-letter name starting with S and ending with a:**
```bash
sed -n '/^S...a$/p' names
```

**Find names starting with V:**
```bash
sed -n '/^V/p' names
```

**Find names ending with a:**
```bash
sed -n '/a$/p' names
```

**Using wildcards (shell, not sed):**
```bash
ls -ltr *.txt
```

**Names starting with only A or C:**
```bash
sed -n '/[AC]/p' names
```

**Names starting with only A to D:**
```bash
sed -n '/^[A-D]/p' names
```

---

## POSIX Character Classes

Example:
```bash
sed -n '/[[:alpha:]]/p' posix
```

| Class | Meaning |
|---|---|
| `[:alnum:]` | alphanumeric characters |
| `[:alpha:]` | alphabetic characters |
| `[:digit:]` | digits |
| `[:blank:]` | space and tab |
| `[:lower:]` | lowercase letters |
| `[:upper:]` | uppercase letters |
| `[:punct:]` | punctuation characters |
| `[:space:]` | whitespace characters |

---