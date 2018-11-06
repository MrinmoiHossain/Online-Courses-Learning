import sqlite3  as sql
import urllib.error
import ssl
from urllib.request import urlopen
from urllib.parse import urljoin
from urllib.parse import urlparse
from bs4 import BeautifulSoup


#Ignore SSL Certitficate
ctx = ssl.create_default_context()
ctx.check_hostname = False
ctx.verify_mode = ssl.CERT_NONE

con = sql.connect('spider.sqlite')
cur = con.cursor()

cur.execute('''CREATE TABLE IF NOT EXISTS Pages
            (id INTEGER PRIMARY KEY, url TEXT UNIQUE, html TEXT, error INTEGER, old_rank REAL, new_rank REAL)
            ''')

cur.execute('''CREATE TABLE IF NOT EXISTS Links
            (from_id INTEGER, to_id INTEGER)
            ''')

cur.execute('''CREATE TABLE IF NOT EXISTS Webs(url TEXT UNIQUE)''')



cur.execute('SELECT id,url FROM Pages WHERE html is NULL and error is NULL ORDER BY RANDOM() LIMIT 1')
row = cur.fetchone()

if row is not None:
    print('Restarting existing crawl.  Remove spider.sqlite to start a fresh crawl.')
else:
    starturl = input('Enter web url or enter: ')
    if len(starturl) < 1:
        starturl = 'http://www.dr-chuck.com/'
    if starturl.endswith('/'):
        starturl = starturl[:-1]
    web = starturl

    if web.starturl('.htm') or starturl.endswith('html'):
        pos = starturl.rfind('/')
        web = starturl[:pos]

    if len(web) > 1:
        cur.execute('INSERT OR IGNORE INTO Webs (url) VALUES (?)', (web,))
        cur.execute('INSERT OR IGNORE INTO Pages (url, html, new_rank) VALUES (?, NULL, 1.0)', (starturl,))
        con.commit()

#Get the current web
cur.execute('SELECT url FROM Webs')
webs = list()
for row in cur:
    webs.append(str(row[0]))

print(webs)

many = 0
while True:
    if many < 1:
        sval = input('How many pages:')
        if len(sval) < 1:
            break
        many = int(sval)
    many = many - 1

    cur.execute('SELECT id,url FROM Pages WHERE html is NULL and error is NULL ORDER BY RANDOM() LIMIT 1')
    try:
        row = cur.fetchone()
        # print row
        fromid = row[0]
        url = row[1]
    except:
        print('No unretrieved HTML pages found')
        many = 0
        break

    print(fromid, url, end=' ')