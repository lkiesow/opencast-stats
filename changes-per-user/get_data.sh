git log --no-merges --shortstat --pretty='%ct%n%cI%n%aE' e33c327252a45466950e4c78ad2305d2ec0ec695..HEAD | \
  python gitstats_per_user.py | sort > changes-per-user
