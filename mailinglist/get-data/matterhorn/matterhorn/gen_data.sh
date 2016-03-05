grep -m 1 '^Date: ' mbox-without-jira/* | sed 's/^.*Date:  *//' | while read d; do date -u --iso-8601 -d "$d"; done &> by.date.dat
cat by.date.dat | sed 's/...$//' | sort | uniq -c > by.month.dat
grep -m 1 '^Date: ' mbox-without-jira/* | sed 's/^.*Date:  *//' | cut -d' ' -f6 | sort -g | uniq -c > timezones.dat
