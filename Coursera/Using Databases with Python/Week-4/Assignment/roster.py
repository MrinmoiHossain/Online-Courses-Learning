import json
import sqlite3 as sql

class DB:
    def __init__(self):
        self.db_name = 'roster.sqlite'
        self.con = ''
        self.cur = ''
        self.jfile = ''

        self.fname = input('Enter file name: ')
        if len(self.fname) < 1:
            self.fname = 'roster_data.json'

        self.jfile = open(self.fname).read()
        self.jfile = json.loads(self.jfile)

    def db_connection(self):
        self.con = sql.connect(self.db_name)
        self.cur = self.con.cursor()

    def create_db(self):
        self.cur.executescript('''
            DROP TABLE IF EXISTS User;
            DROP TABLE IF EXISTS Member;
            DROP TABLE IF EXISTS Course;

            CREATE TABLE User(
                id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
                name TEXT UNIQUE
            );

            CREATE TABLE Course(
                id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
                title TEXT UNIQUE
            );

            CREATE TABLE Member(
                user_id INTEGER,
                course_id INTEGER,
                role INTEGER,
                PRIMARY KEY(user_id, course_id)
            );

        ''')

    def add_db(self):
        for entry in self.jfile:
            name = entry[0]
            title = entry[1]
            role = entry[2]

            #print(name, title, role)

            self.cur.execute('''INSERT OR IGNORE INTO User(name)
                            VALUES(?)''', (name,))
            self.cur.execute('SELECT id FROM User WHERE name = ?', (name,))
            user_id = self.cur.fetchone()[0]

            self.cur.execute('''INSERT OR IGNORE INTO Course(title)
                            VALUES(?)''', (title,))
            self.cur.execute('SELECT id FROM Course WHERE title = ?', (title,))
            course_id = self.cur.fetchone()[0]

            self.cur.execute('''INSERT OR REPLACE INTO Member(user_id, course_id, role)
                            VALUES(?,?,?)''', (user_id, course_id, role))            
            
            self.con.commit()
            

    def show_db(self):
        self.showData = self.cur.execute('''
            SELECT hex(User.name || Course.title || Member.role ) AS X FROM 
            User JOIN Member JOIN Course 
            ON User.id = Member.user_id AND Member.course_id = Course.id
            ORDER BY X
        ''')

        print('########################')
        for self.data in self.showData:
            print(self.data)

    def db_disconnection(self):
        self.cur.close()


if __name__ == '__main__':
    obj = DB()
    obj.db_connection()
    obj.create_db()
    obj.add_db()
    obj.show_db()
    obj.db_disconnection()
