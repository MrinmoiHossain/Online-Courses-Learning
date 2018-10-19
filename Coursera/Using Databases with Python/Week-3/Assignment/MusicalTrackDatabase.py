import xml.etree.ElementTree as ET
import sqlite3
import re

class DB:
    def __init__(self):
        self.db_name = 'musicalTrackDatabase.sqlite'
        self.con = ''
        self.cur = ''
        self.xfile = ''

    def db_connection(self):
        self.con = sqlite3.connect(self.db_name)
        self.cur = self.con.cursor()

    def create_db(self):
        self.cur.executescript('''

        ''')


if __name__ == '__main__':
    obj = DB()
    obj.db_connection()
