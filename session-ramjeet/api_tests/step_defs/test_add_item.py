import pytest
from pytest_bdd import scenarios, when, then
import requests

scenarios('../features/add_new_item.feature')

add_new_item_url = "http://127.0.0.1:5000/item"

@when('I add item to todo')
def add_new_item():
  data={
    "item" : "Get grocery from market",
    "reminder": True
  }
  pytest.api_response = requests.post(add_new_item_url, json=data)

@then('I should be able to add item to the todo')
def check_the_added_item_returned():
  body = pytest.api_response.json()
  assert type(body) == dict


@then('the api status code should be 201')
def check_status_code():
  assert pytest.api_response.status_code == 201

@then('the api response content type should be json')
def check_content_type():
  assert pytest.api_response.headers['Content-type'] == 'application/json'