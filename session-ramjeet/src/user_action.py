from user_repository import UserRepository

class UserActions:
  def __init__(self) -> None:
    self.user_repo = UserRepository()


  def add_user(self, username,passw):
    try:
      user = self.user_repo.add_user(username,passw)
      return user
    except Exception as e:
      print(e)
      return {}
      

