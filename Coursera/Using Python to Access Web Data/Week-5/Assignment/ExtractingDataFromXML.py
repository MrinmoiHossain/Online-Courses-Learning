import urllib.request, urllib.parse, urllib.error
import xml.etree.ElementTree as ET

link = input('Enter location: ')
html = urllib.request.urlopen(link).read().decode()
print('Retrieving', link)
print('Retrieved', len(html), 'characters')


#data calculation
cn = 0
sm = 0
data = ET.fromstring(html)
tags = data.findall('comments/comment')

for tag in tags:
    cn += 1
    sm += int(tag.find('count').text)

print('Count:', cn)
print('Sum:', sm)
