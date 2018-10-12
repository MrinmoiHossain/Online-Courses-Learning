import urllib.request, urllib.parse, urllib.error
from bs4 import BeautifulSoup
import ssl

#Get SSL Certification Error handeling
ctx = ssl.create_default_context()
ctx.check_hostname = False
ctx.verify_mode = ssl.CERT_NONE

#Data Collect From the Website
link = input('Enter - ')
html = urllib.request.urlopen(link, context = ctx).read()
soup = BeautifulSoup(html, 'html.parser')


#Data Scraping
tags = soup('span')
sm = 0
cn = 0
for tag in tags:
    cn += 1
    sm += int(tag.contents[0])

print('Count %d' % cn)
print('Sum %d' % sm)
