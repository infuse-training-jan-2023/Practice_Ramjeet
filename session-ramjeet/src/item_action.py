from src.item_repository import ItemRepository

class ItemActions:
  def __init__(self) -> None:
    self.item_repo = ItemRepository()

  def get_all_items(self):
    try:
      items = self.item_repo.get_all_items()
      res = []
      for item in items:
        res.append({
          'id': item[0],
          'item': item[1],
          'status': item[2],
          'reminder': item[3],
        })
      return res
    except Exception as e:
      print(e)
      return {}
      
  def get_item(self,id):
    try:
      item = self.item_repo.get_item(id)
      res = []
      for item in item:
        res.append({
          'id': item[0],
          'item': item[1],
          'status': item[2],
          'reminder': item[3],
        })
      return res
    except Exception as e:
      print(e)
      return {}
  def delete_item(self,id):
    try:
      del_item_id = self.item_repo.delete_item(id)
      return del_item_id
    except Exception as e:
      print(e)
      return {}
  def add_item(self, item, reminder):
    try:
      item = self.item_repo.add_item(item, reminder)
      return item
    except Exception as e:
      print(e)
      return {}
      
  def update_item(self, id,data):
    try:
      item_id = self.item_repo.update_item(id, data)
      return item_id
    except Exception as e:
      print(e)
      return {}
