from src.item_repository import ItemRepository

items = [
  ('Complete exercises', 0)
]

item_repo = ItemRepository()

def test_add_item_makes_db_call(mocker):
  mock = mocker.patch('src.item_repository.ItemRepository.add_item', return_value = [])
  _ = item_repo.add_item(items[0][0],items[0][1])
  assert mock.call_count == 1

def test_add_item(mocker):
  mock = mocker.patch('src.item_repository.ItemRepository.add_item', return_value = items)
  item_returned = item_repo.add_item(items[0][0],items[0][1])
  for i, item in enumerate(item_returned):
    assert item == items[i]