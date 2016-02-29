import sys
import operator

by_month = True
data = {}

i = 0
for line in sys.stdin:
    if i == 3 and line.strip() != '':
        i = 0
    if i == 0:
        time = line.strip()
    elif i == 1:
        date = line.strip()
        month = date.split('-')
        month = month[0] + month[1]
    elif i == 2:
        author = line.strip()
    elif i == 4:
        tmp = line.split()
        files = int(tmp[0])
        if len(tmp) == 7:
            add = int(tmp[3])
            rem = int(tmp[5])
        elif tmp[4] == 'deletions(-)':
            add = 0
            rem = int(tmp[3])
        else:
            add = int(tmp[3])
            rem = 0

        if by_month:
            data[month] = tuple(map(operator.add, (files, add, rem), data.get(month, (0,0,0))))
        else:
            print('%s\t"%s"\t"%s"\t%s\t%s\t%s' % (time, date, author, files, add, rem))
    i = (i+1) % 5

if by_month:
    for k,v in data.items():
        print('%s\t%s\t%s\t-%s' % (k,v[0],v[1],v[2]))
