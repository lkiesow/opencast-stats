contributors = {}
with open('commits-by-author', 'r') as f:
	for line in f.read().split('\n'):
		if not line:
			continue
		n,a = tuple([x.strip() for x in line.split('\t')])
		contributors[a] = contributors.get(a,0) + int(n)

for a,n in contributors.items():
	print('%03i\t%s' % (n,a))
