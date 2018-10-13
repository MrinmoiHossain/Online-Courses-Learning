import urllib.request, urllib.parse, urllib.error
import json

#Api
api = 'http://py4e-data.dr-chuck.net/geojson?'

#Input data
link = input('Enter location: ')
link = api + urllib.parse.urlencode({'address':link})
print('Retrieving', link)

html = urllib.request.urlopen(link).read().decode()
print('Retrieved', len(html), 'characters')

try:
    js = json.loads(html)
except:
    js = None

placeId = js['results'][0]['place_id']
print('Place id', placeId)
