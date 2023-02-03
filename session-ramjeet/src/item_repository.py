import sqlite3

class ItemRepository:
  NOT_STARTED = "Not Started"
  DBPATH = './todo.db'

  def connect_db(self):
    return sqlite3.connect(self.DBPATH)
  

  def get_all_items(self):
    try:
      conn = self.connect_db()
      c = conn.cursor()
      rows = c.execute('select * from items')
      return rows
    except Exception as e:
      raise Exception('Error: ', e)

  def get_item(self,id):
    try:
      conn = self.connect_db()
      c = conn.cursor()
      row = c.execute('select * from items where id=?',(id,))
      return row
    except Exception as e:
      raise Exception('Error: ', e)

  def delete_item(self,id):
    try:
        # print(type(id))
        conn = self.connect_db()
        c = conn.cursor()
        delete_cursor = c.execute('delete from items where id=?',(id,))
        conn.commit()
        
        return id
    except Exception as e:
        raise Exception('Error: ', e)


  def add_item(self,item, reminder):
    try:
      conn = self.connect_db()
      c = conn.cursor()
      insert_cursor = c.execute('insert into items(item, status, reminder) values(?,?,?)', (item, self.NOT_STARTED, reminder))
      conn.commit()
      return {
        'id': insert_cursor.lastrowid,
        'item': item,
        'status': self.NOT_STARTED,
        'reminder': reminder
      }
    except Exception as e:
      raise Exception('Error: ', e)

  def update_item(self,id, item, status,reminder):
    try:
      conn = self.connect_db()
      c = conn.cursor()
      update_cursor = c.execute('update items set item=?, status=?, reminder=? where id=?', (item, status, reminder, id))
      conn.commit()
      return {
        'id': id,
        'item': item,
        'status': status,
        'reminder': reminder
      }
    except Exception as e:
      raise Exception('Error: ', e)


