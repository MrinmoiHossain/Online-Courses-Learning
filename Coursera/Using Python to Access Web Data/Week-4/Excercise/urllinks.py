import urllib.request, urllib.parse, urllib.error
from bs4 import BeautifulSoup
import ssl

#SSL Certification Error
ctx = ssl.create_default_context()
ctx.check_hostname = False
ctx.verify_mode = ssl.CERT_NONE

#Link input from user
link = input('Enter website link: ')
html = urllib.request.urlopen(link, context=ctx).read()
soup = BeautifulSoup(html, 'html.parser')

tags = soup('a')
for tag in tags:
    print(tag.get('href', None))

