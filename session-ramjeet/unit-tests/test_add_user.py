from src.user_repository import UserRepository

user_to_add = [
  ('jason', '*jason*')
]

user_repo = UserRepository()

def test_add_user_makes_db_call(mocker):
  mock = mocker.patch('src.user_repository.UserRepository.add_user', return_value = [])
  _ = user_repo.add_user(user_to_add[0][0],user_to_add[0][1])
  assert mock.call_count == 1

def test_add_user(mocker):
  mock = mocker.patch('src.user_repository.UserRepository.add_user', return_value = user_to_add)
  user_returned = user_repo.add_user(user_to_add[0][0],user_to_add[0][1])
  assert user_returned == user_to_add
