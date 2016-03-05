for i in *.dat; do
	cat "$i" > "by-month/$(echo "$i" | sed 's,^...........\(.......\).*$,\1,').dat"
done
