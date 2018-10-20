import xml.etree.ElementTree as ET
import sqlite3 as sql

class DB:
    def __init__(self):
        self.db_name = 'musicalTrackDatabase.sqlite'
        self.con = ''
        self.cur = ''
        self.xfile = ''

        self.fname = input('Enter file name: ')
        if len(self.fname) < 1:
            self.fname = 'Library.xml'

        self.xfile = ET.parse(self.fname)

    def db_connection(self):
        self.con = sql.connect(self.db_name)
        self.cur = self.con.cursor()

    def create_db(self):
        self.cur.executescript('''
            DROP TABLE IF EXISTS Artist;
            DROP TABLE IF EXISTS Album;
            DROP TABLE IF EXISTS Genre;
            DROP TABLE IF EXISTS Track;

            CREATE TABLE Artist(
                id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
                name TEXT UNIQUE
            );

            CREATE TABLE Genre(
                id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
                name TEXT UNIQUE
            );

            CREATE TABLE Album(
                id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
                artist_id INTEGER,
                title TEXT UNIQUE
            );

            CREATE TABLE Track(
                id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
                title TEXT  UNIQUE,
                album_id  INTEGER,
                genre_id  INTEGER,
                len INTEGER, 
                rating INTEGER, 
                count INTEGER
            );
        ''')

    def lookup(self, d, key):
        found = False
        for child in d:
            if found:
                return child.text
            if child.tag == 'key' and child.text == key:
                found = True

        return None
        
    def add_db(self):
        self.findAll = self.xfile.findall('dict/dict/dict')
        print('Dict Count:', len(self.findAll))
        #self.cur.execute(''' ''')

        for entry in self.findAll:
            #print(entry)
            if(self.lookup(entry, 'Track ID') is None):
                continue

            artist = self.lookup(entry, 'Artist')

            genre = self.lookup(entry, 'Genre')

            album = self.lookup(entry, 'Album')
            
            name = self.lookup(entry, 'Name')
            length = self.lookup(entry, 'Total Time')
            rating = self.lookup(entry, 'Rating')
            count = self.lookup(entry, 'Play Count')

            if artist is None or genre is None or album is None or name is None:
                continue

            #print(name, artist, album, count, rating, length)
            self.cur.execute('''INSERT OR IGNORE INTO Artist(name)
                                VALUES(?)''', (artist,))
            self.cur.execute('SELECT id FROM Artist WHERE name = ?', (artist,))
            artist_id = self.cur.fetchone()[0]

            self.cur.execute('''INSERT OR IGNORE INTO Genre(name)
                                VALUES(?)''', (genre,))
            self.cur.execute('SELECT id FROM Genre WHERE name = ?', (genre,))
            genre_id = self.cur.fetchone()[0]

            self.cur.execute('''INSERT OR IGNORE INTO Album(title, artist_id)
                                VALUES(?,?)''', (album,artist_id))
            self.cur.execute('SELECT id FROM Album WHERE title = ?', (album,))
            album_id = self.cur.fetchone()[0]

            self.cur.execute('''INSERT OR REPLACE INTO Track(title, album_id, genre_id, len, rating, count)
                                VALUES(?, ?, ?, ?, ?, ?)''', (name, album_id, genre_id, length, rating, count))
            
            self.con.commit()
            

    def show_db(self):
        self.showData = self.cur.execute('''
            SELECT Track.title, Artist.name, Album.title, Genre.name 
                FROM Track JOIN Genre JOIN Album JOIN Artist 
                    ON Track.genre_id = Genre.ID and Track.album_id = Album.id 
                AND Album.artist_id = Artist.id
                ORDER BY Artist.name LIMIT 3
        ''')
        
        for self.data in self.showData:
            print('Title:', self.data[0], 'Atrist:', self.data[1], 'Album:', self.data[2], 'Genre:', self.data[3])

    def db_disconnection(self):
        self.cur.close()


if __name__ == '__main__':
    obj = DB()
    obj.db_connection()
    obj.create_db()
    obj.add_db()
    obj.show_db()
    obj.db_disconnection()

