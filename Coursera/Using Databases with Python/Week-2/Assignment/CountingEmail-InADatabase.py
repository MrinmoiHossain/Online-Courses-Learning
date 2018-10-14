import sqlite3
import re

class MyDB:
    def __init__(self):
        self.db_name = 'emaildb.sqlite'
        self.con = ''
        self.cur = ''
        self.fl = ''

    def db_connect(self):
        self.con = sqlite3.connect(self.db_name)
        self.cur = self.con.cursor()
    
    def create_db(self):
        try:
            self.cur.execute('CREATE TABLE Counts(org TEXT, count INTEGER)')
            self.con.commit()
        except:
            None
            #self.cur.execute('Drop Before Database')

    def add_db(self, a):
        self.cur.execute('INSERT INTO Counts(org, count) VALUES(?, 1)', (a,))

    def update_db(self, a):
        self.cur.execute('UPDATE Counts SET count = count + 1 WHERE org = ?', (a,))
    
    def show_db(self):
        self.sql = 'SELECT org, count FROM Counts ORDER BY count DESC LIMIT 10'
        for self.row in self.cur.execute(self.sql):
            print(str(self.row[0]), self.row[1])

        self.cur.close()

    def open_file(self):
        self.fname = input('Enter file name: ')
        if len(self.fname) < 1:
            self.fname = 'mbox.txt'
        
        self.fl = open(self.fname)
        
        for self.line in self.fl:
            if not self.line.startswith('From: '):
                continue
            self.line = self.line.strip()
            self.temp = re.findall('@([\w.]+)', self.line)
            
            if len(self.temp) > 0:
                self.domain = self.temp[0]
                self.cur.execute('SELECT count FROM Counts WHERE org = ? ', (self.domain,))
                self.row = self.cur.fetchone()

                if self.row is None:
                    self.add_db(self.domain)
                else:
                    self.update_db(self.domain)

                self.con.commit()

if __name__ == '__main__':
    obj = MyDB()
    obj.db_connect()
    obj.create_db()
    obj.open_file()
    obj.show_db()
