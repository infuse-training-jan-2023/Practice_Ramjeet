import sqlite3

class UserRepository:
  NOT_STARTED = "Not Started"
  DBPATH = './todo.db'

  def connect_db(self):
    if self.connection is None:
      self.connection =  sqlite3.connect(self.db_path, check_same_thread=False)

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

 


