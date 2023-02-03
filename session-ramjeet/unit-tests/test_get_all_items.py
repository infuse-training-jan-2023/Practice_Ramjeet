from src.item_repository import ItemRepository

items=[
    (5,'Go to shopping','Not started',1),
    (7,'exercise','Not started',0)

]

item_repo=ItemRepository()
def test_get_all_items_makes_db_call(mocker):
    mock=mocker.patch('src.item_repository.ItemRepository.get_all_items', return_value=[])
    _=item_repo.get_all_items()
    assert mock.call_count == 1

