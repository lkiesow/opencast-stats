import requests
import re
import sys

url = 'https://api.bitbucket.org/2.0/repositories/opencast-community/matterhorn/pullrequests'
payload = {'state': {'OPEN', 'MERGED', 'DECLINED'}}
r = requests.get(url, params=payload)
lastid = r.json()['size']

for id in range(80, lastid + 1):
    r = requests.get(url + '/' + str(id) + '/comments')
    comments = r.json()
    for commentid in range(comments['size']):
        try:
            comment = comments['values'][commentid]['content']['raw']
            sentences = re.split(r' *[\.,\?!:][\'"\)\]]* *', comment)
            for sentence in sentences:
                if '//review//' in sentence:
                    #print('PR' + str(id) + '-COMMENT' + str(commentid) + ': ' + sentence)
                    sys.stdout.write(sentence.encode('utf8') + '\n')
        except IndexError:
            #print('index error at PR ' + str(id) + ' comment ' + str(commentid))
            pass
