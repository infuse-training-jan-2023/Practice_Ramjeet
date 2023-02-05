import pytest
from pytest_bdd import scenarios, when, then
import requests

scenarios('../features/delete_item.feature')

delete_item_url = "http://127.0.0.1:5000/deleteitem"

@when('I delete an item')
def delete_item():
  data={
    "id" : 19
  }
  pytest.api_response = requests.post(delete_item_url,json=data)

@then('item should be deleted from the todo')
def check_the_deleted_item_id_returned():
  body = pytest.api_response.json()
  assert body == 19

@then('the api status code should be 200')
def check_status_code():
  assert pytest.api_response.status_code == 201

@then('the api response content type should be json')
def check_content_type():
  assert pytest.api_response.headers['Content-type'] == 'application/json'