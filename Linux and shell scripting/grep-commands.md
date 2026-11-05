# 15 Cases of grep Command

## 1. Ignore upper and lower case while searching
`grep -i "keyword" file.txt`

## 2. Search everything except a given pattern/keyword
`grep -v "keyword" file.txt`

## 3. Print how many times (count) a given keyword is present in a file
`grep -c "keyword" file.txt`

## 4. Search for exact match of a given keyword in a file
`grep -w "keyword" file.txt`

## 5. Print the line number of matches of a given keyword in a file
`grep -n "keyword" file.txt`

## 6. Search a given keyword in multiple files
`grep "keyword" file1.txt file2.txt file3.txt`

## 7. Suppress file names while searching a given keyword in multiple files
`grep -h "keyword" file1.txt file2.txt`

## 8. Search multiple keywords in a file
`grep -e "keyword1" -e "keyword2" file.txt`

## 9. Search multiple keywords in multiple files
`grep -e "keyword1" -e "keyword2" file1.txt file2.txt`

## 10. Print only file names which match given keywords
`grep -l "keyword" *.txt`

## 11. Get the keywords/pattern from a file and match with another file
`grep -f patterns.txt file.txt`

## 12. Print the matching line which starts with a given keyword
`grep "^keyword" file.txt`

## 13. Print the matching line which ends with a given keyword
`grep "keyword$" file.txt`

## 14. Search a keyword in all files inside a directory (dirA)
`grep -r "keyword" dirA/`

## 15. Use egrep for multiple keyword search
`egrep "keyword1|keyword2" file.txt`

## Bonus: Search but suppress output/errors on terminal
`grep -q "keyword" file.txt`     # quiet mode, no output, just exit status
`grep "keyword" file.txt 2>/dev/null`   # suppress error messages