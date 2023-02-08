import sqlite3

class ItemRepository:
  def __init__(self) -> None:   
    self.db_path = './todo.db'
    self.connection = None

  def connect_db(self):
    if self.connection is None:
      self.connection =  sqlite3.connect(self.db_path, check_same_thread=False)
  

  def get_all_items(self):
    try:
      self.connect_db()
      c = self.connection.cursor()
      rows = c.execute('select * from items')
      return rows
    except Exception as e:
      raise Exception('Error: ', e)

  def get_item(self,id):
    try:
      self.connect_db()
      c = self.connection.cursor()
      row = c.execute('select * from items where id=?',(id,))
      return row
    except Exception as e:
      raise Exception('Error: ', e)

  def delete_item(self,id):
    try:
        self.connect_db()
        c = self.connection.cursor()
        delete_cursor = c.execute('delete from items where id=?',(id,))
        self.connection.commit()
        return id
    except Exception as e:
        raise Exception('Error: ', e)


  def add_item(self,item, reminder):
    try:
      self.connect_db()
      c = self.connection.cursor()
      insert_cursor = c.execute('insert into items(item, status, reminder) values(?,?,?)', (item, 'Not Started', reminder))
      self.connection.commit()
      return {
        'id': insert_cursor.lastrowid,
        'item': item,
        'status': 'Not Started',
        'reminder': reminder
      }
    except Exception as e:
      raise Exception('Error: ', e)

  def update_item(self,id, data):
    try:
      self.connect_db()
      c = self.connection.cursor()
      for key,value in data.items():
        update_cursor = c.execute('update items set '+key+'=? where id=?', (value, id))
      self.connection.commit()
      return {
        'id': id
      }
    except Exception as e:
      raise Exception('Error: ', e)


