git log --no-merges --shortstat --pretty='%ct%n%cI%n%aE' | python gitstats.py | sort -h > changes.per.month
