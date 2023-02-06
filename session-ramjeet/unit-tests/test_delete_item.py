from src.item_repository import ItemRepository

# item = [
#   (3, 'Go to shopping', 'Not Started', 1)
# ]
id=3
item_repo = ItemRepository()

def test_delete_item_makes_db_call(mocker):
  mock = mocker.patch('src.item_repository.ItemRepository.delete_item', return_value = [])
  _ = item_repo.delete_item(id)
  assert mock.call_count == 1

def test_delete_item(mocker):
  mock = mocker.patch('src.item_repository.ItemRepository.delete_item', return_value = id)
  id_returned = item_repo.delete_item(id)
  assert id == id_returned