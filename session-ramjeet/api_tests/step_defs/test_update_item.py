import pytest
from pytest_bdd import scenarios, when, then
import requests

scenarios('../features/update_item.feature')

update_item_url = "http://127.0.0.1:5000/item/10"

@when('I update an item')
def update_item():
  data={
    "item" : "Go to work"
  }
  pytest.api_response = requests.put(update_item_url,json=data)

@then('item should be updated from the todo')
def check_the_updated_item_id_returned():
  body = pytest.api_response.json()
  assert body["id"] == 10

@then('the api status code should be 201')
def check_status_code():
  assert pytest.api_response.status_code == 201

@then('the api response content type should be json')
def check_content_type():
  assert pytest.api_response.headers['Content-type'] == 'application/json'