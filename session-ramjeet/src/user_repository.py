import sqlite3

class UserRepository:
  def __init__(self) -> None:   
    self.db_path = './todo.db'
    self.connection = None

  def connect_db(self):
    if self.connection is None:
      self.connection =  sqlite3.connect(self.db_path, check_same_thread=False)

  def add_user(self,username, passw):
    try:
      self.connect_db()
      c = self.connection.cursor()
      insert_cursor = c.execute('insert into users(username, passw) values(?,?)', (username, passw))
      self.connection.commit()
      return {
        'id': insert_cursor.lastrowid,
        'user': username,
      }
    except Exception as e:
      raise Exception('Error: ', e)

 


