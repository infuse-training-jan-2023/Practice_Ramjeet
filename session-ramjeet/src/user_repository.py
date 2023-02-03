import sqlite3

class UserRepository:
  NOT_STARTED = "Not Started"
  DBPATH = './todo.db'

  def connect_db(self):
    return sqlite3.connect(self.DBPATH)

  def add_user(self,username, passw):
    try:
      conn = self.connect_db()
      c = conn.cursor()
      insert_cursor = c.execute('insert into users(username, passw) values(?,?)', (username, passw))
      conn.commit()
      return {
        'id': insert_cursor.lastrowid,
        'user': username,
      }
    except Exception as e:
      raise Exception('Error: ', e)

 


